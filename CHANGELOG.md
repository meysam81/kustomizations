# Changelog

## [2.1.0](https://github.com/meysam81/kustomizations/compare/v2.0.0...v2.1.0) (2025-02-03)


### Features

* complete one-click deployment for prowler ([f65da3a](https://github.com/meysam81/kustomizations/commit/f65da3ab066bac7a231b55792c681e33db0735cb))


### Miscellaneous Chores

* disable echo-server environment ([2956dd9](https://github.com/meysam81/kustomizations/commit/2956dd902f2137759ed08dc4d268551e0e364a42))

## [2.0.0](https://github.com/meysam81/kustomizations/compare/v1.8.1...v2.0.0) (2025-01-09)


### ⚠ BREAKING CHANGES

* remove namespace creation from amazon-eks-identity stack

### Miscellaneous Chores

* remove namespace creation from amazon-eks-identity stack ([c86be70](https://github.com/meysam81/kustomizations/commit/c86be70de28c93ca72e7d51d8cd0368775ae72a6))

## [1.8.1](https://github.com/meysam81/kustomizations/compare/v1.8.0...v1.8.1) (2025-01-02)


### Miscellaneous Chores

* **prowler:** add in-cluster rbac resources ([58fad5d](https://github.com/meysam81/kustomizations/commit/58fad5d347d997f79251568cfaebea2b0b023481))

## [1.8.0](https://github.com/meysam81/kustomizations/compare/v1.7.2...v1.8.0) (2024-12-30)


### Features

* **audit:** add prowler stack ([de17c65](https://github.com/meysam81/kustomizations/commit/de17c657e3eef3f92f091626a91e3a951a156c3f))


### Bug Fixes

* modify missing filenames ([49fb784](https://github.com/meysam81/kustomizations/commit/49fb7845211f9f4d6811d5bd7980a4542fd35707))


### Miscellaneous Chores

* add serviceaccount for listings-directory ([04f36fa](https://github.com/meysam81/kustomizations/commit/04f36fa96c0a50f82cf5a2a6035539cd9243404b))

## [1.7.2](https://github.com/meysam81/kustomizations/compare/v1.7.1...v1.7.2) (2024-12-25)


### Bug Fixes

* **CI:** make ansible-lint happy ([8f68d12](https://github.com/meysam81/kustomizations/commit/8f68d125e6eb975285fc4ffab17f882f2ef42952))
* **kratos-admin:** modify typo ([2de11be](https://github.com/meysam81/kustomizations/commit/2de11be037ab845d76abab409c1fab8dde4f33c4))


### Miscellaneous Chores

* ignore non-manifest files ([581bccb](https://github.com/meysam81/kustomizations/commit/581bccb458f6174e99296f55ae0eca90c037c280))

## [1.7.1](https://github.com/meysam81/kustomizations/compare/v1.7.0...v1.7.1) (2024-12-25)


### Bug Fixes

* **CI:** specify directory for flux push artifact command ([0e37f0c](https://github.com/meysam81/kustomizations/commit/0e37f0c4463131b9ee03e9351cdb8fc8452152b6))


### Miscellaneous Chores

* **kratos-admin:** allow for modifying the kratos URLs ([f6dbfd8](https://github.com/meysam81/kustomizations/commit/f6dbfd85ec946119497f81014fa29cc9c245a421))

## [1.7.0](https://github.com/meysam81/kustomizations/compare/v1.6.2...v1.7.0) (2024-12-24)


### Features

* create kratos-admin-ui stack ([8515920](https://github.com/meysam81/kustomizations/commit/8515920ce3e5d1ca8cb780d6aa8e498e177e50a0))

## [1.6.2](https://github.com/meysam81/kustomizations/compare/v1.6.1...v1.6.2) (2024-12-19)


### Bug Fixes

* **CI:** make ansible-lint happy ([a4e9ff0](https://github.com/meysam81/kustomizations/commit/a4e9ff01b7e4898aaa5413c13ad10b5edafeda67))


### Miscellaneous Chores

* **default-backend:** add env vars and update image to v1.1.1 ([e2da1cc](https://github.com/meysam81/kustomizations/commit/e2da1ccc020533f0ac34f90b61f4c1b5c032b7e2))

## [1.6.1](https://github.com/meysam81/kustomizations/compare/v1.6.0...v1.6.1) (2024-12-19)


### Miscellaneous Chores

* **directory:** add envs configmap to the container ([bfe04ec](https://github.com/meysam81/kustomizations/commit/bfe04ec5906a37a2efaaeff30e7c4b2265f55f17))

## [1.6.0](https://github.com/meysam81/kustomizations/compare/v1.5.2...v1.6.0) (2024-12-19)


### Features

* add listings directory ([9db12d5](https://github.com/meysam81/kustomizations/commit/9db12d5e4606dfce03dfaf8427186a9786545d29))


### Miscellaneous Chores

* **oathkeeper:** replace rolebinding subject with SA namespace ([a053089](https://github.com/meysam81/kustomizations/commit/a053089616879265a6c319c82fa4277dfc786137))

## [1.5.2](https://github.com/meysam81/kustomizations/compare/v1.5.1...v1.5.2) (2024-12-17)


### Miscellaneous Chores

* **deps:** update bitnami/kubectl docker tag to v1.31.4 ([#32](https://github.com/meysam81/kustomizations/issues/32)) ([1179b59](https://github.com/meysam81/kustomizations/commit/1179b59d372d1ffd776893e062810cbbbd5725e4))
* **deps:** update bitnami/kubectl docker tag to v1.32.0 ([#37](https://github.com/meysam81/kustomizations/issues/37)) ([737a4ee](https://github.com/meysam81/kustomizations/commit/737a4eebabdd9120ac7c1463b91ddbdbc9bc1147))

## [1.5.1](https://github.com/meysam81/kustomizations/compare/v1.5.0...v1.5.1) (2024-12-08)


### Miscellaneous Chores

* **docs:** add more docs to the current kustomization stacks ([c599d00](https://github.com/meysam81/kustomizations/commit/c599d00dc6e5045fc32df888cb4d8b7803012297))
* **kratos-ui:** add docs and modify configmap name ([0b2e523](https://github.com/meysam81/kustomizations/commit/0b2e5237f3cac1a624f80902c8703a5610235c30))

## [1.5.0](https://github.com/meysam81/kustomizations/compare/v1.4.9...v1.5.0) (2024-12-08)


### Features

* add odoo kustomization stack ([0d1f30a](https://github.com/meysam81/kustomizations/commit/0d1f30a3214d1a8effec953880f953b5e1831035))

## [1.4.9](https://github.com/meysam81/kustomizations/compare/v1.4.8...v1.4.9) (2024-11-28)


### Miscellaneous Chores

* **kratos:** mount kratos-envs to the containers ([9db6244](https://github.com/meysam81/kustomizations/commit/9db6244681b2207abd68c578521a69af401f38e7))

## [1.4.8](https://github.com/meysam81/kustomizations/compare/v1.4.7...v1.4.8) (2024-11-25)


### Bug Fixes

* **kratos:** discover kratos-courier VMServiceScrape ([4f16095](https://github.com/meysam81/kustomizations/commit/4f160954fb70a66d6dafad5ba3bff9d3753f6e06))
* **kratos:** scrape kratos-admin service only ([e814803](https://github.com/meysam81/kustomizations/commit/e814803ac7a5ec0333709b0064b9791002e90b23))
* **oathkeeper:** discover metrics correctly ([9d3c6b9](https://github.com/meysam81/kustomizations/commit/9d3c6b9cbd5f2999d57afe2e45c02490f2585bb8))


### Miscellaneous Chores

* **docs:** add verify attribute to OCI Repository ([be210fe](https://github.com/meysam81/kustomizations/commit/be210feb7b0c7b9112fdb5fd5d5e78e41a8f2384))

## [1.4.7](https://github.com/meysam81/kustomizations/compare/v1.4.6...v1.4.7) (2024-11-10)


### Bug Fixes

* **CI:** create identity for the runner to sign the artifact ([ac99965](https://github.com/meysam81/kustomizations/commit/ac99965317f13212d266c547a1918165c259a242))
* **CI:** do not use modern algorithm as notation CLI breaks ([15b0166](https://github.com/meysam81/kustomizations/commit/15b016671ef7779c6602e77d723f9a78a83f0a82))
* **CI:** manually login to GHCR ([f414a89](https://github.com/meysam81/kustomizations/commit/f414a890abe925557ca3e4ddb6bb377c79c1468e))
* **CI:** modify cert format issue for notation CLI ([9f88582](https://github.com/meysam81/kustomizations/commit/9f885829fcbe75fa90a37679b5fee045db015c69))
* **CI:** modify syntax error ([4ef5e8d](https://github.com/meysam81/kustomizations/commit/4ef5e8db04159855eec7daafd80a8f15932425a8))
* **CI:** perform keyless signing of the artifact ([8f2f77b](https://github.com/meysam81/kustomizations/commit/8f2f77b3d61c97a2c903b34c50a2355845aeb9c2))

## [1.4.6](https://github.com/meysam81/kustomizations/compare/v1.4.5...v1.4.6) (2024-11-09)


### Bug Fixes

* **CI:** manually login to ghcr ([4d58c69](https://github.com/meysam81/kustomizations/commit/4d58c69ce6cb4f75933fb99b985e0a0fd8ecd59e))

## [1.4.5](https://github.com/meysam81/kustomizations/compare/v1.4.4...v1.4.5) (2024-11-09)


### Bug Fixes

* **CI:** identity the release please to capture its output ([acf0f7e](https://github.com/meysam81/kustomizations/commit/acf0f7e9b6bdfbaf5c22484178a4dc08ba6bc5bb))

## [1.4.4](https://github.com/meysam81/kustomizations/compare/v1.4.3...v1.4.4) (2024-11-09)


### Bug Fixes

* **CI:** pass release-please output to the next job ([28310e7](https://github.com/meysam81/kustomizations/commit/28310e7476cbe64a56d00983c097c78e579b9d74))

## [1.4.3](https://github.com/meysam81/kustomizations/compare/v1.4.2...v1.4.3) (2024-11-09)


### Miscellaneous Chores

* **CI:** re-order keys in workflow ([5d2782c](https://github.com/meysam81/kustomizations/commit/5d2782cc7baeb042169f3cf15285343aff5a7990))

## [1.4.2](https://github.com/meysam81/kustomizations/compare/v1.4.1...v1.4.2) (2024-11-09)


### Features

* **CI:** publish OCI package to GHCR ([6fd5ac5](https://github.com/meysam81/kustomizations/commit/6fd5ac54904797f82f3a3914faf6b0d92c2aed40))


### Bug Fixes

* **CI:** do not ignore oathkeeper-maester ([93c5103](https://github.com/meysam81/kustomizations/commit/93c5103960ce502530c7dd4f4e8e2cd59825c1d5))
* **CI:** use flux CLI to push to OCI registry ([517aed4](https://github.com/meysam81/kustomizations/commit/517aed4c73bc1c795857636534d9d145d00d49c2))


### Miscellaneous Chores

* **docs:** add OCI relevant snippet ([4a7993c](https://github.com/meysam81/kustomizations/commit/4a7993c0931b3d4b5913927c2fe520816bd7a72c))

## [1.4.1](https://github.com/meysam81/kustomizations/compare/v1.4.0...v1.4.1) (2024-11-08)


### Bug Fixes

* **pod-identity-webhook:** expose https on non-privileged port ([1082f0e](https://github.com/meysam81/kustomizations/commit/1082f0ed4f7244d94a3ec634df21880e9be64141))

## [1.4.0](https://github.com/meysam81/kustomizations/compare/v1.3.1...v1.4.0) (2024-11-07)


### Features

* **amazon-pod-identity:** add the webhook stack with a robust kustomization :) ([10c9afc](https://github.com/meysam81/kustomizations/commit/10c9afc7098cf07b50d8d0f324a103ad7b52429b))


### Miscellaneous Chores

* **amazon-pod-identity:** add probes to the deployment ([4df330c](https://github.com/meysam81/kustomizations/commit/4df330cb66a41e590d7cf632e6f55c32da9a88a5))
* **docs:** add the usage for amazon pod identity stack ([c3abb93](https://github.com/meysam81/kustomizations/commit/c3abb936ab4f580cd55108f4bc560c3d5591c1f3))

## [1.3.1](https://github.com/meysam81/kustomizations/compare/v1.3.0...v1.3.1) (2024-11-04)


### Bug Fixes

* **oathkeeper:** discover metrics for scraping only ([c6bfe3f](https://github.com/meysam81/kustomizations/commit/c6bfe3f2758ea45437c4785bfa8bc8b98375279b))

## [1.3.0](https://github.com/meysam81/kustomizations/compare/v1.2.0...v1.3.0) (2024-11-03)


### Features

* add default backend stack ([f2b0289](https://github.com/meysam81/kustomizations/commit/f2b0289e7e3ea6a37933dec38e0fcc9b47e4306d))


### Miscellaneous Chores

* **docs:** provide a reproducible example ([8d37bc2](https://github.com/meysam81/kustomizations/commit/8d37bc27df8b8e285c148aa05f06fb9b02a084ac))

## [1.2.0](https://github.com/meysam81/kustomizations/compare/v1.1.0...v1.2.0) (2024-11-03)


### Features

* add the kratos UI stack ([6b97d08](https://github.com/meysam81/kustomizations/commit/6b97d084ed657b24193c62f80076b2013fe1251d))


### Miscellaneous Chores

* **CI:** remove useless checkout step ([b2702d8](https://github.com/meysam81/kustomizations/commit/b2702d823a3122ae7a32caf6ca89287b7b5c9e84))

## [1.1.0](https://github.com/meysam81/kustomizations/compare/v1.0.2...v1.1.0) (2024-11-02)


### Features

* add ealen/echo-server kustomization stack ([220af73](https://github.com/meysam81/kustomizations/commit/220af73237f0f29c018fd1fe72a6eeb4b32d9105))
* create echo-server kustomization stack ([d986a76](https://github.com/meysam81/kustomizations/commit/d986a765424cdc6e51a283717b5ba6239971315c))
* separate oathkeeper from its maester Kustomization stack ([530cc47](https://github.com/meysam81/kustomizations/commit/530cc47ae854c9f8cb43c7cb521faf432069068c))

## [1.0.2](https://github.com/meysam81/kustomizations/compare/v1.0.1...v1.0.2) (2024-10-20)


### Bug Fixes

* **oathkeeper:** modify the kubectl image tag ([520bd76](https://github.com/meysam81/kustomizations/commit/520bd76f7499ed29d14c3c49a37e74a965c63f74))
* **oathkeeper:** use env as normal unix style ([c4113d7](https://github.com/meysam81/kustomizations/commit/c4113d7d1f4609cef035f1143bbb5e88bad85a54))

## [1.0.1](https://github.com/meysam81/kustomizations/compare/v1.0.0...v1.0.1) (2024-10-20)


### Bug Fixes

* **oathkeeper:** use bitnami 100M image for shell access ([d0e0e3f](https://github.com/meysam81/kustomizations/commit/d0e0e3f13dea1f9a82cc622c2d61dc41a2ccf922))
* **tests:** deploy to ns from the CLI ([d19b41e](https://github.com/meysam81/kustomizations/commit/d19b41ec40723f7d478e5beb433fe1a2ea7d50b9))

## 1.0.0 (2024-10-20)


### Features

* add oathkeeper vm overlay ([46fdd4a](https://github.com/meysam81/kustomizations/commit/46fdd4afc8a9c39883376105dccad32362cf1e68))
* create kratos kustomization manifests ([4ada8db](https://github.com/meysam81/kustomizations/commit/4ada8db0f75ab1c780a66a21a22d110b7100fc57))


### Bug Fixes

* add ansible lint ignore ([429db3b](https://github.com/meysam81/kustomizations/commit/429db3b8dddbebc647f55a98afc66b047da0ed9b))
* **CI:** create namespace beforehand ([8ecb5cc](https://github.com/meysam81/kustomizations/commit/8ecb5cc59b8307d7236e9526ec7204ac2135a124))
* **CI:** install crds first ([ddf4ae0](https://github.com/meysam81/kustomizations/commit/ddf4ae04c28eab7f2b5c4b2336513fafbb954980))
* **CI:** make linter happy, again ([60c4264](https://github.com/meysam81/kustomizations/commit/60c4264661eb80d48991a7a08a3eb6e95aba1671))
* **CI:** modify another yaml syntax issue ([88843d2](https://github.com/meysam81/kustomizations/commit/88843d24f086ad3c86263aa3b729bfca952b804b))
* **CI:** modify arg order ([f2f353c](https://github.com/meysam81/kustomizations/commit/f2f353c48267cf46946a12332edbd02e16c173c7))
* **CI:** modify path name ([9fe7757](https://github.com/meysam81/kustomizations/commit/9fe77578b8886a9ce345388e589cbf6012f0bc05))
* **CI:** modify yaml syntax issue ([2d7a978](https://github.com/meysam81/kustomizations/commit/2d7a978037027591f6edb50b9a4d784c940f0a41))
* **CI:** provide newline escape ([ff342c8](https://github.com/meysam81/kustomizations/commit/ff342c880b7a876aa297803fb05645b95e74cd3b))
* **CI:** remove quotes from mode ([60502ed](https://github.com/meysam81/kustomizations/commit/60502ed5b187c0057d88843d06433107d1eb5be8))
* **CI:** use v1.31 of k3s ([7f284fc](https://github.com/meysam81/kustomizations/commit/7f284fc017a4c44995fc514cdf96cb273dc6e4d1))
* **CI:** wait longer for pods to get ready ([71d6a5a](https://github.com/meysam81/kustomizations/commit/71d6a5a419f19497615f75035c1d8433415aae2d))
* make linter happy ([23b7876](https://github.com/meysam81/kustomizations/commit/23b78767150a64e78456e54d10f910adada86026))
* make linter happy and prom verification pass ([8cfcb83](https://github.com/meysam81/kustomizations/commit/8cfcb834ed2b880d8c9efa5c867daa970b4775b9))
* **oathkeeper:** modify prom overlay issue ([b49700d](https://github.com/meysam81/kustomizations/commit/b49700dcb825d62d949ebeaaeeeff2b80863f528))
* **tests:** deploy kratos in auth namespace ([530221d](https://github.com/meysam81/kustomizations/commit/530221d90e3e6b36b19a8bd92d11626428d0325c))
