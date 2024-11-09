#!/usr/bin/env bash

set -eux

check_requirements() {
    local missing_tools=()

    if ! command -v oras &> /dev/null; then
        missing_tools+=("oras")
    fi
    if ! command -v git &> /dev/null; then
        missing_tools+=("git")
    fi
    if ! command -v jq &> /dev/null; then
        missing_tools+=("jq")
    fi

    if [ ${#missing_tools[@]} -ne 0 ]; then
        echo "Error: Missing required tools: ${missing_tools[*]}"
        echo "Please install them before continuing."
        exit 1
    fi
}

get_git_metadata() {
    local source_path=$1
    local repo_url=""
    local commit_hash=""
    local created_at=""

    pushd "$source_path" >/dev/null

    repo_url=$(git config --get remote.origin.url 2>/dev/null)
    repo_url=${repo_url%.git}

    commit_hash=$(git rev-parse HEAD 2>/dev/null)

    created_at=$(git show -s --format=%cI HEAD 2>/dev/null)

    popd >/dev/null

    echo "{\"repo_url\": \"$repo_url\", \"commit_hash\": \"$commit_hash\", \"created_at\": \"$created_at\"}"
}

create_oci_config() {
    local source_path=$1
    local image_name=$2
    local tag=$3
    local temp_config=$(mktemp)

    local git_metadata=$(get_git_metadata "$source_path")
    local repo_url=$(echo "$git_metadata" | jq -r .repo_url)
    local commit_hash=$(echo "$git_metadata" | jq -r .commit_hash)
    local created_at=$(echo "$git_metadata" | jq -r .created_at)

    cat > "$temp_config" <<EOF
{
    "architecture": "amd64",
    "os": "linux",
    "config": {},
    "created": "$(date -u +"%Y-%m-%dT%H:%M:%SZ")",
    "annotations": {
        "org.opencontainers.image.source": "${repo_url}",
        "org.opencontainers.image.version": "${tag}",
        "org.opencontainers.image.revision": "${commit_hash}",
        "org.opencontainers.image.created": "${created_at}",
        "org.opencontainers.image.description": "OCI artifact containing ${image_name}",
        "org.opencontainers.image.title": "${image_name}",
        "org.opencontainers.image.vendor": "${GITHUB_USERNAME}"
    }
}
EOF

    echo "$temp_config"
}

ghcr_login() {
    if [ -z "$GITHUB_TOKEN" ]; then
        echo "Error: GITHUB_TOKEN environment variable is not set"
        echo "Export your GitHub Personal Access Token:"
        echo "export GITHUB_TOKEN=your_token_here"
        exit 1
    fi

    echo "$GITHUB_TOKEN" | oras login ghcr.io -u $GITHUB_USERNAME --password-stdin
}

push_to_oci() {
    local source_path=$1
    local image_name=$2
    local tag=${3:-latest}
    local registry=${4:-ghcr.io}
    local full_image_name="$registry/$GITHUB_USERNAME/$image_name:$tag"

    local temp_dir=$(mktemp -d)
    local tar_file=$temp_dir/image_name.tar
    local tar_basename=$(basename $tar_file)
    tar cvzf "$tar_file" $(find . -maxdepth 1 -type d ! -name '.*' | grep -v -f .buildignore)

    local config_file=$(create_oci_config "$source_path" "$image_name" "$tag")

    echo "Publishing to $full_image_name..."
    cd $temp_dir
    oras push "$full_image_name" \
      --config "$config_file":application/vnd.oci.image.config.v1+json \
      "$tar_basename:application/x-tar"

    rm "$tar_file" "$config_file"

    echo "Successfully published to $full_image_name"
    echo "View the package at: https://$registry/$GITHUB_USERNAME/$image_name"
}

main() {
    check_requirements

    if [ "$#" -lt 2 ]; then
        echo "Usage: $0 <source_path> <image_name> [tag] [registry]"
        echo "Example: $0 ./kustomize my-kustomization v1.0.0 ghcr.io"
        exit 1
    fi

    if [ -z "$GITHUB_USERNAME" ]; then
        echo "Enter your GitHub username:"
        read GITHUB_USERNAME
        export GITHUB_USERNAME
    fi

    ghcr_login

    push_to_oci "$@"
}

main "$@"
