# Changelog

Since we follow [Conventional
Commits](https://decisions.seedcase-project.org/why-conventional-commits/) when
writing commit messages, we're able to automatically create formal "releases" of
the template based on the commit messages. Releases in the context of template
are when changes occur to the `template/` files or to the `copier.yaml` files.
The releases are also published to Zenodo for easier discovery, archival, and
citation purposes. We use
[Cocogitto](https://decisions.seedcase-project.org/why-semantic-release-with-cocogitto/)
to be able to automatically create these releases, which uses
[SemVar](https://semverdoc.org) as the version numbering scheme, and [Git
Cliff](https://decisions.seedcase-project.org/why-changelog-with-git-cliff/) to
generate the changelog based on the commit messages.

Because releases are created based on commit messages, a new release is created
quite often---sometimes several times in a day. This also means that any
individual release will not have many changes within it. Below is a list of the
releases we've made so far, along with what was changed within each release.

Commits from bots, like `dependabot` or `pre-commit-ci`, are not included in the
changelog.

## [0.22.0](https://github.com/seedcase-project/template-data-package/compare/0.21.1..0.22.0) - 2026-06-10

### ✨ Features

- Add Panache Markdown formatter
  [#247](https://github.com/seedcase-project/template-data-package/pull/247) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([8b0fbae](https://github.com/seedcase-project/template-data-package/commit/8b0fbae0faa859d54063d5e76db62c8c30f1d398))

### ♻️ Refactor

- Remove scope from Dependabot and pre-commit updates
  [#249](https://github.com/seedcase-project/template-data-package/pull/249) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([6678705](https://github.com/seedcase-project/template-data-package/commit/6678705722a95b5b0739f185f4b08b09b75ad12d))
- Use full workflows, not reusable ones
  [#248](https://github.com/seedcase-project/template-data-package/pull/248) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([a5ba84c](https://github.com/seedcase-project/template-data-package/commit/a5ba84ccf8c6f7fe5fb2416f7ae064c78b4c8f47))

## [0.21.1](https://github.com/seedcase-project/template-data-package/compare/0.21.0..0.21.1) - 2026-06-10

### ♻️ Refactor

- Use Cocogitto and git-cliff instead of Commitizen
  [#245](https://github.com/seedcase-project/template-data-package/pull/245) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([add1283](https://github.com/seedcase-project/template-data-package/commit/add128312b4aac2d51ff211cb5663327c5268826))

## [0.21.0](https://github.com/seedcase-project/template-data-package/compare/0.20.0..0.21.0) - 2026-06-10

### ✨ Features

- Move config files into `.config/`
  [#244](https://github.com/seedcase-project/template-data-package/pull/244) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([ce4696a](https://github.com/seedcase-project/template-data-package/commit/ce4696abfb1cda79071ac606c73c869e593501a3))

## [0.20.0](https://github.com/seedcase-project/template-data-package/compare/0.19.6..0.20.0) - 2026-06-10

### ✨ Features

- Convert data package to Python package with `src/` layout
  [#243](https://github.com/seedcase-project/template-data-package/pull/243) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([8f227b4](https://github.com/seedcase-project/template-data-package/commit/8f227b4419bcb215319b5b90d43e9f5ab1e6b366))

### 📝 Documentation

- Update CONTRIBUTING from t-squared by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([6120a24](https://github.com/seedcase-project/template-data-package/commit/6120a24ccd6760d1f07da928d56346a8f82a223f))
- Match CITATION title with tagline by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([ab09a5f](https://github.com/seedcase-project/template-data-package/commit/ab09a5f23224f4d4861771c253a4ead50bf4b3e5))
- Update year (and format) license by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([a97277b](https://github.com/seedcase-project/template-data-package/commit/a97277b99d1e8c08e8d587a708e705aaf2b3dcde))
- Update README based on changes from t-squared by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([badd399](https://github.com/seedcase-project/template-data-package/commit/badd399e8e6584557da9c8f9ffa2dca7213af848))
- Split up guide docs, as styled in t-squared by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([dca35a0](https://github.com/seedcase-project/template-data-package/commit/dca35a078b032a608081769374855a93e089cc20))

### 💄 Styling

- Ran pre-commit hooks and formatted Markdown by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([fbcaba1](https://github.com/seedcase-project/template-data-package/commit/fbcaba13231c77e84755c1c8e778ac7d396d7220))
- Update Seedcase Quarto extensions by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([303417f](https://github.com/seedcase-project/template-data-package/commit/303417fd5861538d36b3f4c431841e45712cb35f))

### 👷 CI/CD

- Switch to not use reusable workflows by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([e1575e7](https://github.com/seedcase-project/template-data-package/commit/e1575e7c38df68ad9246ce942b3ac25d08e9c7d7))
- Remove use of scope and use Unicode emoji in commits by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([1988b05](https://github.com/seedcase-project/template-data-package/commit/1988b0513b0bad3e929e5edd6f5099edff1462c4))
- Expand workflow checks, don't use reusable workflows by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([c43d4d9](https://github.com/seedcase-project/template-data-package/commit/c43d4d9bf55244016575107e588227a6c0505853))
- Switch to using Cocogitto and git-cliff for releasing by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([652db00](https://github.com/seedcase-project/template-data-package/commit/652db0001ed15c6d568212ebeb7de23fe96cf38b))
- Only check commits from latest tag
  [#242](https://github.com/seedcase-project/template-data-package/pull/242) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([42ea73b](https://github.com/seedcase-project/template-data-package/commit/42ea73bcf72479ee6b616f747c1e06f826b9cd63))

### 👩‍💻 Miscellaneous

- Move `.typos.toml` and `rumdl.toml` into `.config/` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([97c9966](https://github.com/seedcase-project/template-data-package/commit/97c996648a31a9aa9d1e9598665be067d5e0c30b))
- Use Panache for Markdown formatting by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([848f944](https://github.com/seedcase-project/template-data-package/commit/848f94429d8d630a84225815bd4c4a382c9e0eba))
- Match EditorConfig with t-squared version by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([10bf7da](https://github.com/seedcase-project/template-data-package/commit/10bf7da297eb77ad3403b5e99b88034fcca0de51))
- Switch CODEOWNERS to product-tools team by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([caf63d5](https://github.com/seedcase-project/template-data-package/commit/caf63d5c8c8155fe3abb14cf2e918fea1cbc387d))
- Simplify and update VS Code settings from t-squared by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([b63f297](https://github.com/seedcase-project/template-data-package/commit/b63f2978a699e8b19d903d5ab76edf600834a988))
- Update contributor list script from t-squared by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([b9e5621](https://github.com/seedcase-project/template-data-package/commit/b9e56217e01cc2acc896a641a91d77fcb13d5840))
- Expand on justfile, from t-squared by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([96d8fd3](https://github.com/seedcase-project/template-data-package/commit/96d8fd3d4eb38a4e7a4d5ab81f94e62f4186cdf4))
- Ignore cache in git ignore by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([9948177](https://github.com/seedcase-project/template-data-package/commit/9948177aa3ec00d111155078a1e6a11c825d03c8))
- Simplify pull request template by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([27bec0c](https://github.com/seedcase-project/template-data-package/commit/27bec0c46efbd8f92bf8deb4aba60f8573faa685))
- Match Quarto config and landing pages with t-squared style by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([69b2850](https://github.com/seedcase-project/template-data-package/commit/69b2850b6b7deb15dfe2c14c436157d11e7c57d2))
- Update pre-commit versions by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([922cff1](https://github.com/seedcase-project/template-data-package/commit/922cff18e14cc4f5df69716d2efb186dd6eb5e94))

## [0.19.6](https://github.com/seedcase-project/template-data-package/compare/0.19.5..0.19.6) - 2026-05-19

### 🐛 Fixes

- Make rumdl exclude stricter
  [#226](https://github.com/seedcase-project/template-data-package/pull/226) by
  [`@martonvago`](https://github.com/martonvago)
  ([83e6c69](https://github.com/seedcase-project/template-data-package/commit/83e6c699a5b6f97495edbb240b54644cb7636aed))

## [0.19.5](https://github.com/seedcase-project/template-data-package/compare/0.19.4..0.19.5) - 2026-05-18

### ♻️ Refactor

- Generate data package pages in docs
  [#222](https://github.com/seedcase-project/template-data-package/pull/222) by
  [`@martonvago`](https://github.com/martonvago)
  ([a031cb5](https://github.com/seedcase-project/template-data-package/commit/a031cb59625a468f93b03c5a3426f72b661e0df1))

## [0.19.4](https://github.com/seedcase-project/template-data-package/compare/0.19.3..0.19.4) - 2026-05-18

### ♻️ Refactor

- Generate README.md from qmd file
  [#220](https://github.com/seedcase-project/template-data-package/pull/220) by
  [`@martonvago`](https://github.com/martonvago)
  ([ba8b55f](https://github.com/seedcase-project/template-data-package/commit/ba8b55f782b7f1d136931102210543faeda53641))

## [0.19.3](https://github.com/seedcase-project/template-data-package/compare/0.19.2..0.19.3) - 2026-05-07

### ♻️ Refactor

- Run `just run-all`
  [#221](https://github.com/seedcase-project/template-data-package/pull/221) by
  [`@martonvago`](https://github.com/martonvago)
  ([f448c20](https://github.com/seedcase-project/template-data-package/commit/f448c2059fca0ee4cda441a60e4bcab4cd8a56e7))

## [0.19.2](https://github.com/seedcase-project/template-data-package/compare/0.19.1..0.19.2) - 2026-04-24

### ♻️ Refactor

- Exclude generated files from formatting
  [#217](https://github.com/seedcase-project/template-data-package/pull/217) by
  [`@martonvago`](https://github.com/martonvago)
  ([b902e05](https://github.com/seedcase-project/template-data-package/commit/b902e05ee6275074fa67e0812d3406f6c6e72130))

## [0.19.1](https://github.com/seedcase-project/template-data-package/compare/0.19.0..0.19.1) - 2026-04-23

### 🐛 Fixes

- Use website in quarto config
  [#216](https://github.com/seedcase-project/template-data-package/pull/216) by
  [`@martonvago`](https://github.com/martonvago)
  ([f535939](https://github.com/seedcase-project/template-data-package/commit/f535939288004e3ed1521ef8eb4d2d1bcaf356c5))

## [0.19.0](https://github.com/seedcase-project/template-data-package/compare/0.18.0..0.19.0) - 2026-04-23

### ✨ Features

- Set up website in template
  [#213](https://github.com/seedcase-project/template-data-package/pull/213) by
  [`@martonvago`](https://github.com/martonvago)
  ([94b8c70](https://github.com/seedcase-project/template-data-package/commit/94b8c70918182aa6983fc069555df37428ab553f))

## [0.18.0](https://github.com/seedcase-project/template-data-package/compare/0.17.0..0.18.0) - 2026-04-13

### ✨ Features

- Integrate Flower
  [#211](https://github.com/seedcase-project/template-data-package/pull/211) by
  [`@martonvago`](https://github.com/martonvago)
  ([4ea9934](https://github.com/seedcase-project/template-data-package/commit/4ea993464fc504ae3dea85b4a4d7d2dd19cac4d4))

## [0.17.0](https://github.com/seedcase-project/template-data-package/compare/0.16.6..0.17.0) - 2026-04-13

### ✨ Features

- Add rumdl and format files
  [#210](https://github.com/seedcase-project/template-data-package/pull/210) by
  [`@martonvago`](https://github.com/martonvago)
  ([88d8b1e](https://github.com/seedcase-project/template-data-package/commit/88d8b1ed5cb0f84fafaf574a8a8ff061740fab77))

## [0.16.6](https://github.com/seedcase-project/template-data-package/compare/0.16.5..0.16.6) - 2026-04-10

### ♻️ Refactor

- Updates from `just run-all`, like pre-commit hooks
  [#209](https://github.com/seedcase-project/template-data-package/pull/209) by
  [`@martonvago`](https://github.com/martonvago)
  ([25be026](https://github.com/seedcase-project/template-data-package/commit/25be026b2ec5575ae6960d211d52cac06b965c62))

### 👩‍💻 Miscellaneous

- Upgrade `seedcase-theme`
  [#194](https://github.com/seedcase-project/template-data-package/pull/194) by
  [`@signekb`](https://github.com/signekb)
  ([305e818](https://github.com/seedcase-project/template-data-package/commit/305e818e1809a6fb17193666d9448a9786ea7eac))
- Upgrade `seedcase-theme`
  [#196](https://github.com/seedcase-project/template-data-package/pull/196) by
  [`@signekb`](https://github.com/signekb)
  ([606d7fa](https://github.com/seedcase-project/template-data-package/commit/606d7fa72e32ffc321f07a69fce1a0a6f7a0d61e))

## [0.16.5](https://github.com/seedcase-project/template-data-package/compare/0.16.4..0.16.5) - 2025-12-08

### ♻️ Refactor

- Move test to own file
  [#185](https://github.com/seedcase-project/template-data-package/pull/185) by
  [`@martonvago`](https://github.com/martonvago)
  ([d7d8838](https://github.com/seedcase-project/template-data-package/commit/d7d8838820ffbf9e0e9b70e333b3f20ae185d087))

## [0.16.4](https://github.com/seedcase-project/template-data-package/compare/0.16.3..0.16.4) - 2025-12-05

### ♻️ Refactor

- Move metadata to metadata file
  [#178](https://github.com/seedcase-project/template-data-package/pull/178) by
  [`@martonvago`](https://github.com/martonvago)
  ([c8b1e8f](https://github.com/seedcase-project/template-data-package/commit/c8b1e8f9e6943161b8b0232facd4516747657bcd))

## [0.16.3](https://github.com/seedcase-project/template-data-package/compare/0.16.2..0.16.3) - 2025-12-05

### ♻️ Refactor

- Update and run justfile recipes
  [#182](https://github.com/seedcase-project/template-data-package/pull/182) by
  [`@martonvago`](https://github.com/martonvago)
  ([d3e92c8](https://github.com/seedcase-project/template-data-package/commit/d3e92c8cd28cc4b8e7c20c5e23b6105638c7f6f3))

## [0.16.2](https://github.com/seedcase-project/template-data-package/compare/0.16.1..0.16.2) - 2025-12-05

### ♻️ Refactor

- Update `get-contributors`
  [#179](https://github.com/seedcase-project/template-data-package/pull/179) by
  [`@martonvago`](https://github.com/martonvago)
  ([774698e](https://github.com/seedcase-project/template-data-package/commit/774698e551ecb54232da3613c2f6b39fdd26a19f))

## [0.16.1](https://github.com/seedcase-project/template-data-package/compare/0.16.0..0.16.1) - 2025-12-05

### ♻️ Refactor

- Move releases to changelog
  [#177](https://github.com/seedcase-project/template-data-package/pull/177) by
  [`@martonvago`](https://github.com/martonvago)
  ([48b25b1](https://github.com/seedcase-project/template-data-package/commit/48b25b196d2f0bbc47381e85ab4498ac82beac85))
- Update supporting files
  [#180](https://github.com/seedcase-project/template-data-package/pull/180) by
  [`@martonvago`](https://github.com/martonvago)
  ([317bacd](https://github.com/seedcase-project/template-data-package/commit/317bacd96efd48d6be90d6fc072337654f481352))
- Update workflows
  [#181](https://github.com/seedcase-project/template-data-package/pull/181) by
  [`@martonvago`](https://github.com/martonvago)
  ([222a9d4](https://github.com/seedcase-project/template-data-package/commit/222a9d4291ab397feda2a9955e8beeeaa78a1c37))
- Update remaining config files
  [#183](https://github.com/seedcase-project/template-data-package/pull/183) by
  [`@martonvago`](https://github.com/martonvago)
  ([4e54f2b](https://github.com/seedcase-project/template-data-package/commit/4e54f2b96a852a61574f82693299e046f1dbe8da))
- Update copier vars
  [#184](https://github.com/seedcase-project/template-data-package/pull/184) by
  [`@martonvago`](https://github.com/martonvago)
  ([48eae8f](https://github.com/seedcase-project/template-data-package/commit/48eae8f53222b671f0ffaac6ca5ee5ea083ad8be))

## [0.16.0](https://github.com/seedcase-project/template-data-package/compare/0.15.2..0.16.0) - 2025-11-14

### ✨ Features

- Justfile recipe to preview docs
  [#173](https://github.com/seedcase-project/template-data-package/pull/173) by
  [`@joelostblom`](https://github.com/joelostblom)
  ([6e271d2](https://github.com/seedcase-project/template-data-package/commit/6e271d2a7969d2a9dc186c14e7cd66007622a109))

### ♻️ Refactor

- Update post-copy message to latest version
  [#154](https://github.com/seedcase-project/template-data-package/pull/154) by
  [`@martonvago`](https://github.com/martonvago)
  ([ad7fea0](https://github.com/seedcase-project/template-data-package/commit/ad7fea0b76683b3935d28fd9538f7e3174c65cc2))

### 👷 CI/CD

- Use `reusable-test-copier` workflow
  [#152](https://github.com/seedcase-project/template-data-package/pull/152) by
  [`@martonvago`](https://github.com/martonvago)
  ([9c75343](https://github.com/seedcase-project/template-data-package/commit/9c75343bb04e60b76c374d5ca77a669318112e16))

### ❤️ New contributors

- [`@joelostblom`](https://github.com/joelostblom) made their first contribution
  in [#173](https://github.com/seedcase-project/template-data-package/pull/173)

## [0.15.2](https://github.com/seedcase-project/template-data-package/compare/0.15.1..0.15.2) - 2025-08-20

### 🐛 Fixes

- Exclude `justfile` in the `list-todos` recipe
  [#153](https://github.com/seedcase-project/template-data-package/pull/153) by
  [`@signekb`](https://github.com/signekb)
  ([f9f1a3d](https://github.com/seedcase-project/template-data-package/commit/f9f1a3d2c9f8cf6e5248c94b86922547cbcc6f82))

### ❤️ New contributors

- [`@signekb`](https://github.com/signekb) made their first contribution in
  [#153](https://github.com/seedcase-project/template-data-package/pull/153)

## [0.15.1](https://github.com/seedcase-project/template-data-package/compare/0.15.0..0.15.1) - 2025-08-20

### ♻️ Refactor

- Use bash instead of zsh
  [#150](https://github.com/seedcase-project/template-data-package/pull/150) by
  [`@martonvago`](https://github.com/martonvago)
  ([d86cebe](https://github.com/seedcase-project/template-data-package/commit/d86cebe0160cccf576c2da2089e007e0e290cb1e))

### ❤️ New contributors

- `@dependabot[bot]` started making automated contributions

## [0.15.0](https://github.com/seedcase-project/template-data-package/compare/0.14.0..0.15.0) - 2025-08-04

### ✨ Features

- Workflow to check for updates and make a PR with them
  [#135](https://github.com/seedcase-project/template-data-package/pull/135) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([b796afb](https://github.com/seedcase-project/template-data-package/commit/b796afba452719dffaec10f89440d7592816c487))

## [0.14.0](https://github.com/seedcase-project/template-data-package/compare/0.13.0..0.14.0) - 2025-08-01

### ✨ Features

- Add CC0 license for data to template
  [#141](https://github.com/seedcase-project/template-data-package/pull/141) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([bfca1dd](https://github.com/seedcase-project/template-data-package/commit/bfca1ddd1980671f6268ef1ffc5eaa71c0ec532f))

### 📝 Documentation

- Add Kris' ORCID to CITATION
  [#142](https://github.com/seedcase-project/template-data-package/pull/142) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([0fbb5f2](https://github.com/seedcase-project/template-data-package/commit/0fbb5f2ad97f111f685fbbc3bf4e7264b5e861da))

## [0.13.0](https://github.com/seedcase-project/template-data-package/compare/0.12.0..0.13.0) - 2025-07-29

### ✨ Features

- Add template README in `docs/`
  [#136](https://github.com/seedcase-project/template-data-package/pull/136) by
  [`@martonvago`](https://github.com/martonvago)
  ([b2bca19](https://github.com/seedcase-project/template-data-package/commit/b2bca1994ec738450220d2efa6e8444f8a8025ca))

### 🐛 Fixes

- When bumping versions, we still want the website updated too
  [#138](https://github.com/seedcase-project/template-data-package/pull/138) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([a9fe518](https://github.com/seedcase-project/template-data-package/commit/a9fe518d947164f2c986d255dfd4d0fe5ea20f18))

## [0.12.0](https://github.com/seedcase-project/template-data-package/compare/0.11.1..0.12.0) - 2025-07-29

### ✨ Features

- Justfile recipes to update from the template
  [#133](https://github.com/seedcase-project/template-data-package/pull/133) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([757a82c](https://github.com/seedcase-project/template-data-package/commit/757a82c7855ce28fdf26cc2893fd6dda76c76d09))

### 🐛 Fixes

- Post-copy tasks should run in sequence, not be dependent
  [#134](https://github.com/seedcase-project/template-data-package/pull/134) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([e3b038a](https://github.com/seedcase-project/template-data-package/commit/e3b038a038ecae423e7ba86f433403eed42e79ea))

### 📝 Documentation

- Add DOI from
  Zenodo[#137](https://github.com/seedcase-project/template-data-package/pull/137)
  by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([a187862](https://github.com/seedcase-project/template-data-package/commit/a187862524c11817c4a91a6d16f17ec8744242bd))

## [0.11.1](https://github.com/seedcase-project/template-data-package/compare/0.11.0..0.11.1) - 2025-07-28

### 🐛 Fixes

- Rename `properties` to `package_properties`
  [#132](https://github.com/seedcase-project/template-data-package/pull/132) by
  [`@martonvago`](https://github.com/martonvago)
  ([aa1b745](https://github.com/seedcase-project/template-data-package/commit/aa1b7451706442e48de7c91a6e32ff72bf353cfa))

### 📝 Documentation

- Guide for updating or using in existing project
  [#130](https://github.com/seedcase-project/template-data-package/pull/130) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([4b80d29](https://github.com/seedcase-project/template-data-package/commit/4b80d29a685e15e56ec090e4d77e83747ba4bd24))

### 👩‍💻 Miscellaneous

- Add test of recopy and copy in existing project
  [#126](https://github.com/seedcase-project/template-data-package/pull/126) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([17cabfc](https://github.com/seedcase-project/template-data-package/commit/17cabfcd1b9030992e65a0576be2b5ccf341c9cf))

## [0.11.0](https://github.com/seedcase-project/template-data-package/compare/0.10.4..0.11.0) - 2025-07-25

### ✨ Features

- Add after copy message
  [#129](https://github.com/seedcase-project/template-data-package/pull/129) by
  [`@martonvago`](https://github.com/martonvago)
  ([d8fef45](https://github.com/seedcase-project/template-data-package/commit/d8fef45962192b85131837d8c8b93a00fe3942a4))

### 📝 Documentation

- Explain how testing works in contributing guide
  [#127](https://github.com/seedcase-project/template-data-package/pull/127) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([714636f](https://github.com/seedcase-project/template-data-package/commit/714636f94b762c1a9c1e9c9dba76727d8e6dafb6))

### 👩‍💻 Miscellaneous

- Keep consistency by not having spaces in filenames
  [#125](https://github.com/seedcase-project/template-data-package/pull/125) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([bc50286](https://github.com/seedcase-project/template-data-package/commit/bc50286b125f50cc208ece621640f32a9f40443c))

## [0.10.4](https://github.com/seedcase-project/template-data-package/compare/0.10.2..0.10.4) - 2025-07-25

### 🐛 Fixes

- Don't commit and add, leave that to the user
  [#124](https://github.com/seedcase-project/template-data-package/pull/124) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([816bd01](https://github.com/seedcase-project/template-data-package/commit/816bd01d24946b7d04bd14f03a16d84277432f79))

### ♻️ Refactor

- Ignore generated `*_files/` from Quarto
  [#120](https://github.com/seedcase-project/template-data-package/pull/120) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([909e821](https://github.com/seedcase-project/template-data-package/commit/909e821fa729de6e72b474e47a85dad2344d8dd6))

### 📝 Documentation

- Simplify README to use Quarto and link to website
  [#112](https://github.com/seedcase-project/template-data-package/pull/112) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([84d78a0](https://github.com/seedcase-project/template-data-package/commit/84d78a053425966bf3a412f7492bbff5eaf639b7))
- Moved content from README to landing page
  [#116](https://github.com/seedcase-project/template-data-package/pull/116) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([67db66f](https://github.com/seedcase-project/template-data-package/commit/67db66fb6fbeeaa2ffefbdde865b46d4a585f05b))
- Add install and usage guide
  [#117](https://github.com/seedcase-project/template-data-package/pull/117) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([e06257e](https://github.com/seedcase-project/template-data-package/commit/e06257e5c0e81e14a859af71e449489387adbdce))

### 👩‍💻 Miscellaneous

- Regenerate README
  [#128](https://github.com/seedcase-project/template-data-package/pull/128) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([4ff501b](https://github.com/seedcase-project/template-data-package/commit/4ff501b5e0664d401cfea423896c0409382d1590))

## [0.10.2](https://github.com/seedcase-project/template-data-package/compare/0.10.0..0.10.2) - 2025-07-25

### 🐛 Fixes

- Comment out unused code to pass linter
  [#119](https://github.com/seedcase-project/template-data-package/pull/119) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([5830edd](https://github.com/seedcase-project/template-data-package/commit/5830edd5bcf0172360958c4c904371a8688bcc6b))

### ♻️ Refactor

- Remove content not needed for data packages
  [#108](https://github.com/seedcase-project/template-data-package/pull/108) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([c4e0af2](https://github.com/seedcase-project/template-data-package/commit/c4e0af2567b6346aa0743c005ac639be75d8fc08))

### 📝 Documentation

- Add 404 page to website
  [#114](https://github.com/seedcase-project/template-data-package/pull/114) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([4ac3db4](https://github.com/seedcase-project/template-data-package/commit/4ac3db4ec23c5f459956ed30aef8a77e528f94c9))
- Add release page to website
  [#113](https://github.com/seedcase-project/template-data-package/pull/113) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([8410e14](https://github.com/seedcase-project/template-data-package/commit/8410e142d64e379fd693733fae460e3dfd3f6ba9))

### 👷 CI/CD

- Switch to using non-Python based website workflow
  [#118](https://github.com/seedcase-project/template-data-package/pull/118) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([cebd13d](https://github.com/seedcase-project/template-data-package/commit/cebd13d7503baef1571da34c40566f61c3670a4a))

## [0.10.0](https://github.com/seedcase-project/template-data-package/compare/0.9.0..0.10.0) - 2025-07-24

### ✨ Features

- Add locked var for copyright year
  [#115](https://github.com/seedcase-project/template-data-package/pull/115) by
  [`@martonvago`](https://github.com/martonvago)
  ([7db3f6a](https://github.com/seedcase-project/template-data-package/commit/7db3f6a2d10fa4092c843f923c5015548c3e29a0))

### 👩‍💻 Miscellaneous

- Checks on generated data package from template
  [#106](https://github.com/seedcase-project/template-data-package/pull/106) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([aa4ed68](https://github.com/seedcase-project/template-data-package/commit/aa4ed682d26a76b16a9acfab6ab5c0d7eec8bcb5))

## [0.9.0](https://github.com/seedcase-project/template-data-package/compare/0.8.1..0.9.0) - 2025-07-24

### ✨ Features

- Add post-copy commands to run
  [#101](https://github.com/seedcase-project/template-data-package/pull/101) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([ef57d74](https://github.com/seedcase-project/template-data-package/commit/ef57d74c6952bd49f41bf5742c4fe9d3a011e9cb))

### 📝 Documentation

- Add justfile recipe comments
  [#107](https://github.com/seedcase-project/template-data-package/pull/107) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([b25d47a](https://github.com/seedcase-project/template-data-package/commit/b25d47a64d8334c7b76163f9a864b35eed6fc636))
- Add CONTRIBUTING file
  [#110](https://github.com/seedcase-project/template-data-package/pull/110) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([d17bb22](https://github.com/seedcase-project/template-data-package/commit/d17bb2216fdaa1c285da4386ae2a561c84bec93a))

### 👩‍💻 Miscellaneous

- Don't need these config settings for this project
  [#104](https://github.com/seedcase-project/template-data-package/pull/104) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([e155e7a](https://github.com/seedcase-project/template-data-package/commit/e155e7a1d4bdce7af2c0d5441e96eb4ce62b423a))
- Add Quarto website build files
  [#111](https://github.com/seedcase-project/template-data-package/pull/111) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([c3068ae](https://github.com/seedcase-project/template-data-package/commit/c3068ae547566be06bf5732d1c2cd798235d7379))

## [0.8.1](https://github.com/seedcase-project/template-data-package/compare/0.8.0..0.8.1) - 2025-07-24

### ♻️ Refactor

- Limit permissions used in workflow
  [#105](https://github.com/seedcase-project/template-data-package/pull/105) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([6785773](https://github.com/seedcase-project/template-data-package/commit/67857733b443acb3830b73c0da9ee5bfc6dc3962))

## [0.8.0](https://github.com/seedcase-project/template-data-package/compare/0.7.0..0.8.0) - 2025-07-24

### ✨ Features

- Pre-commit hook to check for conflicts
  [#102](https://github.com/seedcase-project/template-data-package/pull/102) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([39ba9a5](https://github.com/seedcase-project/template-data-package/commit/39ba9a5825cf1012c18a7b9465f364baf24a48f8))

### 📝 Documentation

- Add keyword and ORCID to CITATION file
  [#103](https://github.com/seedcase-project/template-data-package/pull/103) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([d8459b0](https://github.com/seedcase-project/template-data-package/commit/d8459b073903bd802f0733dfe644b6b773c8ff96))

## [0.7.0](https://github.com/seedcase-project/template-data-package/compare/0.6.0..0.7.0) - 2025-07-24

### ✨ Features

- Increase version in `datapackage.json` file on version update
  [#109](https://github.com/seedcase-project/template-data-package/pull/109) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([9071079](https://github.com/seedcase-project/template-data-package/commit/907107927983b096613e6efcc2636a30732395dd))

## [0.6.0](https://github.com/seedcase-project/template-data-package/compare/0.5.1..0.6.0) - 2025-07-23

### ✨ Features

- Add validator for `package_github_repo`
  [#93](https://github.com/seedcase-project/template-data-package/pull/93) by
  [`@martonvago`](https://github.com/martonvago)
  ([eb76c03](https://github.com/seedcase-project/template-data-package/commit/eb76c031624322264fb226c63e02d7685c66a5d8))

## [0.5.1](https://github.com/seedcase-project/template-data-package/compare/0.5.0..0.5.1) - 2025-07-23

### ♻️ Refactor

- Tweak copier settings
  [#91](https://github.com/seedcase-project/template-data-package/pull/91) by
  [`@martonvago`](https://github.com/martonvago)
  ([e0c85ef](https://github.com/seedcase-project/template-data-package/commit/e0c85ef35637e953e386e80817c31dc5fc27a273))

## [0.5.0](https://github.com/seedcase-project/template-data-package/compare/0.4.1..0.5.0) - 2025-07-15

### ✨ Features

- Add Commitizen version bump with GitHub workflow
  [#71](https://github.com/seedcase-project/template-data-package/pull/71) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([e02f93e](https://github.com/seedcase-project/template-data-package/commit/e02f93ee2ba62af043c2bb5a2e5f6e80c36656b6))

### 👷 CI/CD

- Add workflow to test template creation
  [#63](https://github.com/seedcase-project/template-data-package/pull/63) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([3676aeb](https://github.com/seedcase-project/template-data-package/commit/3676aeb68ed95c280706c18d6bed0a1f3aa8e63d))
- Add dependabot for workflows
  [#66](https://github.com/seedcase-project/template-data-package/pull/66) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([aba42e9](https://github.com/seedcase-project/template-data-package/commit/aba42e9a378c9546d49da7bfdd47526c9beda142))

### 👩‍💻 Miscellaneous

- Remove Python specific recipes from justfile
  [#88](https://github.com/seedcase-project/template-data-package/pull/88) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([8fbf257](https://github.com/seedcase-project/template-data-package/commit/8fbf257998086929c8f19739c5ae5c1d933ebb3c))

## [0.4.1](https://github.com/seedcase-project/template-data-package/compare/0.4.0..0.4.1) - 2025-07-15

### ♻️ Refactor

- Revise `CITATION.cff.jinja` to use Jinja variables
  [#81](https://github.com/seedcase-project/template-data-package/pull/81) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([98d0a83](https://github.com/seedcase-project/template-data-package/commit/98d0a83d77d511bb8de3907c0c63af60a29f2eea))

## [0.4.0](https://github.com/seedcase-project/template-data-package/compare/0.3.2..0.4.0) - 2025-07-15

### ✨ Features

- Add recipe to template justfile to list all `TODO` items
  [#79](https://github.com/seedcase-project/template-data-package/pull/79) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([917ac46](https://github.com/seedcase-project/template-data-package/commit/917ac469f566722b6a8970ae67a2619413da07fa))

### 👷 CI/CD

- Don't need to synch anymore
  [#89](https://github.com/seedcase-project/template-data-package/pull/89) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([d36aa8c](https://github.com/seedcase-project/template-data-package/commit/d36aa8c3437e1976074dadaf3a533799c7514143))

## [0.3.2](https://github.com/seedcase-project/template-data-package/compare/0.3.1..0.3.2) - 2025-07-15

### ♻️ Refactor

- Rename to MIT license
  [#80](https://github.com/seedcase-project/template-data-package/pull/80) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([f865f3a](https://github.com/seedcase-project/template-data-package/commit/f865f3a6259991522770334b0fdf6adaede7c56f))

## [0.3.1](https://github.com/seedcase-project/template-data-package/compare/0.3.0..0.3.1) - 2025-07-15

### ♻️ Refactor

- Ignore csv files when running typos
  [#84](https://github.com/seedcase-project/template-data-package/pull/84) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([0d058ba](https://github.com/seedcase-project/template-data-package/commit/0d058baa5a8d22d7ddb28087edbf21f40da69063))

### 👩‍💻 Miscellaneous

- Add `test` template recipe to justfile
  [#69](https://github.com/seedcase-project/template-data-package/pull/69) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([c4d2267](https://github.com/seedcase-project/template-data-package/commit/c4d2267effb6dbeefe186f0467a78562de9f32dc))

## [0.3.0](https://github.com/seedcase-project/template-data-package/compare/0.2.0..0.3.0) - 2025-07-15

### ✨ Features

- Write poetry command in just file
  [#7](https://github.com/seedcase-project/template-data-package/pull/7) by
  [`@K-Beicher`](https://github.com/K-Beicher)
  ([8298099](https://github.com/seedcase-project/template-data-package/commit/8298099152846aab47b00675c2cbc7d26f56af56))
- Create template folder with initial files
  [#52](https://github.com/seedcase-project/template-data-package/pull/52) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([6c37941](https://github.com/seedcase-project/template-data-package/commit/6c3794164da83def59b527c0d84ea9246addaf10))
- Add Dependabot to template for workflows and Python packages
  [#70](https://github.com/seedcase-project/template-data-package/pull/70) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([9adaa06](https://github.com/seedcase-project/template-data-package/commit/9adaa0647863a8e1fba6bb2317844ee041adb389))
- Add recipe to justfile template to (re)build the data package
  [#77](https://github.com/seedcase-project/template-data-package/pull/77) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([c396650](https://github.com/seedcase-project/template-data-package/commit/c396650c6ebec37754caa001046af4ab520d4458))

### ♻️ Refactor

- Match Sprout
  [#40](https://github.com/seedcase-project/template-data-package/pull/40) by
  [`@martonvago`](https://github.com/martonvago)
  ([3db545e](https://github.com/seedcase-project/template-data-package/commit/3db545e4ca3e916b6391f76edac4e6e10b256a7f))
- Revise `pyproject.toml.jinja` to use Jinja variables
  [#76](https://github.com/seedcase-project/template-data-package/pull/76) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([d9b9beb](https://github.com/seedcase-project/template-data-package/commit/d9b9beb85bb6ec7af56d8229cd02ef3112e17b68))
- `.gitignore` should be specific to data packages, not Python ones
  [#75](https://github.com/seedcase-project/template-data-package/pull/75) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([1fa9b90](https://github.com/seedcase-project/template-data-package/commit/1fa9b90db16ce614912cdb5b7186ea550e1bb822))
- Simplify pull request template in the template
  [#82](https://github.com/seedcase-project/template-data-package/pull/82) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([872d18f](https://github.com/seedcase-project/template-data-package/commit/872d18f69cd2cf24c138be93fcb68e7c549a8e65))
- Remove Ruff ignore tests option
  [#83](https://github.com/seedcase-project/template-data-package/pull/83) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([1c9f12e](https://github.com/seedcase-project/template-data-package/commit/1c9f12eb1522f84ce1cdaaea8d8e0df9a5cc5d25))

### 📝 Documentation

- Write the instructions for UV into the readme file
  [#15](https://github.com/seedcase-project/template-data-package/pull/15) by
  [`@K-Beicher`](https://github.com/K-Beicher)
  ([0cad1d5](https://github.com/seedcase-project/template-data-package/commit/0cad1d55fdfc2004116b71fff49eb63c85a12f15))
- Add `CITATION.cff`
  [#42](https://github.com/seedcase-project/template-data-package/pull/42) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([31eb404](https://github.com/seedcase-project/template-data-package/commit/31eb404884b2dae67708876fe5170831ffd6efd9))
- Add Markdown-formatted CC-BY 4.0 license
  [#60](https://github.com/seedcase-project/template-data-package/pull/60) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([fe18267](https://github.com/seedcase-project/template-data-package/commit/fe182674594e0377a4bc3bae6fa579902255f00c))
- Update README with features and usage
  [#57](https://github.com/seedcase-project/template-data-package/pull/57) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([7106406](https://github.com/seedcase-project/template-data-package/commit/71064067a0d1332dcb6de2e044d6d555c964df7d))
- Switch to MIT license, not CC-BY
  [#87](https://github.com/seedcase-project/template-data-package/pull/87) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([0dd4e27](https://github.com/seedcase-project/template-data-package/commit/0dd4e27a4521ccd201c43d1caeb8e6a4d6f30d08))

### 💄 Styling

- Ran pre-commit hooks, to auto-run them soon
  [#12](https://github.com/seedcase-project/template-data-package/pull/12) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([3ab018e](https://github.com/seedcase-project/template-data-package/commit/3ab018eaa84ea0a30962cb3d9dab697f53414f64))

### 👷 CI/CD

- Add example repos to synch
  [#8](https://github.com/seedcase-project/template-data-package/pull/8) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([72596a8](https://github.com/seedcase-project/template-data-package/commit/72596a830a6b4738aec2c7248024d53e4438c87c))
- Add synching workflow
  [#9](https://github.com/seedcase-project/template-data-package/pull/9) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([a3166aa](https://github.com/seedcase-project/template-data-package/commit/a3166aaa5ebc338b498d1db21c159fbc5bf01a63))
- "monkeys", not "monkey" by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([80c6363](https://github.com/seedcase-project/template-data-package/commit/80c636317d4ecc46d691c409c27d615712323595))
- Switch to using reusable "add to board" workflow
  [#11](https://github.com/seedcase-project/template-data-package/pull/11) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([5022fcc](https://github.com/seedcase-project/template-data-package/commit/5022fcc1c7e5945a5df4611ed670b220cbb3686f))
- Use GitHub App tokens for workflows
  [#17](https://github.com/seedcase-project/template-data-package/pull/17) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([67c4f34](https://github.com/seedcase-project/template-data-package/commit/67c4f3486bcf31ffedc0023e343d393745ee8f75))
- Switch to using reusable workflow for syncing
  [#28](https://github.com/seedcase-project/template-data-package/pull/28) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([6d76e56](https://github.com/seedcase-project/template-data-package/commit/6d76e56acd97056b28998a4704552a36919b94e9))
- Add auto-release workflow
  [#62](https://github.com/seedcase-project/template-data-package/pull/62) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([cde2cba](https://github.com/seedcase-project/template-data-package/commit/cde2cba3f6737914af11c031ad50e377a470d109))

### 👩‍💻 Miscellaneous

- Change and delete files, create folders
  [#1](https://github.com/seedcase-project/template-data-package/pull/1) by
  [`@K-Beicher`](https://github.com/K-Beicher)
  ([b15cae5](https://github.com/seedcase-project/template-data-package/commit/b15cae50dacc33e673d2f9cac64bb400f2346b6e))
- Remove pytest reference
  [#3](https://github.com/seedcase-project/template-data-package/pull/3) by
  [`@K-Beicher`](https://github.com/K-Beicher)
  ([e742445](https://github.com/seedcase-project/template-data-package/commit/e7424455abc945bcfda37485861c54524b09cfcf))
- Switch to using uv rather than poetry
  [#10](https://github.com/seedcase-project/template-data-package/pull/10) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([919087c](https://github.com/seedcase-project/template-data-package/commit/919087cca83ccc26a4c8a2cbe9243db8f2634e1f))
- Update pre-commit yaml file
  [#16](https://github.com/seedcase-project/template-data-package/pull/16) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([8dc59ba](https://github.com/seedcase-project/template-data-package/commit/8dc59ba482ca36cc4bfb0503bcfc139e86f456d6))
- Remove leftover `poetry.lock` file
  [#19](https://github.com/seedcase-project/template-data-package/pull/19) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([c2a8e73](https://github.com/seedcase-project/template-data-package/commit/c2a8e73112dd782f76dac6fd439d167d8ccdb92d))
- Add typos to justfile recipe
  [#18](https://github.com/seedcase-project/template-data-package/pull/18) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([02399f0](https://github.com/seedcase-project/template-data-package/commit/02399f0e5c7bb7d99a8d0162320d06b6ea4c14ba))
- Add typos to pre-commit
  [#21](https://github.com/seedcase-project/template-data-package/pull/21) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([a762278](https://github.com/seedcase-project/template-data-package/commit/a762278b46dd56408e202ec4d7c11b61e571bc3c))
- Clean up vscode setting files
  [#22](https://github.com/seedcase-project/template-data-package/pull/22) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([a4fe454](https://github.com/seedcase-project/template-data-package/commit/a4fe4547bfb8039154d28acf69243c67a2b75832))
- Add recipe to install pre-commit hooks
  [#23](https://github.com/seedcase-project/template-data-package/pull/23) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([7f9865f](https://github.com/seedcase-project/template-data-package/commit/7f9865f661391528e9025a67b99173c8e2759f13))
- Simplify the PR template
  [#24](https://github.com/seedcase-project/template-data-package/pull/24) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([fd884d0](https://github.com/seedcase-project/template-data-package/commit/fd884d0b46b71fe1f67f2bbac6dbf76c2d570929))
- Update pull request template
  [#64](https://github.com/seedcase-project/template-data-package/pull/64) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([056665a](https://github.com/seedcase-project/template-data-package/commit/056665a56ec47b288c24be7520d08efab8c54e78))
- Add gitleaks pre-commit hook
  [#58](https://github.com/seedcase-project/template-data-package/pull/58) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([89c7b7a](https://github.com/seedcase-project/template-data-package/commit/89c7b7a0ca6a967945b8e3cfea4656c25f6f3eba))
- Auto-generate the script at package creation, not before
  [#74](https://github.com/seedcase-project/template-data-package/pull/74) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([2b170e1](https://github.com/seedcase-project/template-data-package/commit/2b170e1d466f4ab779f5fa7fc0331bba52d28903))
- Add Jinja extension recommendation
  [#72](https://github.com/seedcase-project/template-data-package/pull/72) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([da4da4d](https://github.com/seedcase-project/template-data-package/commit/da4da4dcc264101401835172225b65dfcb671d75))
- Add Jinja vscode settings to simplify work
  [#73](https://github.com/seedcase-project/template-data-package/pull/73) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([d449c22](https://github.com/seedcase-project/template-data-package/commit/d449c2215669666bd2c49e8c2fabc653d0a2e6bc))
- Convert to non-Python project
  [#86](https://github.com/seedcase-project/template-data-package/pull/86) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([6a768ba](https://github.com/seedcase-project/template-data-package/commit/6a768ba55907993ea8ba30988ddddb95aaf22c4a))

### ❤️ New contributors

- `@github-actions[bot]` started making automated contributions

- [`@lwjohnst86`](https://github.com/lwjohnst86) made their first contribution
  in [#77](https://github.com/seedcase-project/template-data-package/pull/77)

- `@pre-commit-ci[bot]` started making automated contributions

- [`@martonvago`](https://github.com/martonvago) made their first contribution
  in [#40](https://github.com/seedcase-project/template-data-package/pull/40)

- [`@K-Beicher`](https://github.com/K-Beicher) made their first contribution in
  [#15](https://github.com/seedcase-project/template-data-package/pull/15)
