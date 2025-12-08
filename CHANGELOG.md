# Changelog

Since we follow [Conventional
Commits](https://decisions.seedcase-project.org/why-conventional-commits),
we're able to automatically create a release based on the commit message
by using
[Commitizen](https://decisions.seedcase-project.org/why-semantic-release-with-commitizen).
This means that releases can happen quite often, sometimes several in
a day. It also means any individual release will not have many changes
within it. Below is a list of releases along with what was changed
within it.

## 0.16.5 (2025-12-08)

### Refactor

- :recycle: move test to own file (#185)

## 0.16.4 (2025-12-05)

### Refactor

- :recycle: move metadata to metadata file (#178)

## 0.16.3 (2025-12-05)

### Refactor

- :recycle: update and run justfile recipes (#182)

## 0.16.2 (2025-12-05)

### Refactor

- :recycle: update `get-contributors` (#179)

## 0.16.1 (2025-12-05)

### Refactor

- :recycle: update copier vars (#184)
- :recycle: update remaining config files (#183)
- :recycle: update workflows (#181)
- :recycle: update supporting files (#180)
- :recycle: move releases to changelog (#177)

## 0.16.0 (2025-11-14)

### Feat

- :sparkles: justfile recipe to preview docs (#173)

## 0.15.3 (2025-08-20)

### Refactor

- :memo: update post-copy message to latest version (#154)

## 0.15.2 (2025-08-20)

### Fix

- :bug: exclude `justfile` in the `list-todos` recipe (#153)

## 0.15.1 (2025-08-20)

### Refactor

- :construction_worker: use bash instead of zsh (#150)

## 0.15.0 (2025-08-04)

### Feat

- :sparkles: workflow to check for updates and make a PR with them (#135)

## 0.14.0 (2025-08-01)

### Feat

- :sparkles: add CC0 license for data to template (#141)

## 0.13.0 (2025-07-29)

### Feat

- :sparkles: add template README in `docs/` (#136)

### Fix

- :bug: when bumping versions, we still want the website updated too (#138)

## 0.12.0 (2025-07-29)

### Feat

- :sparkles: justfile recipes to update from the template (#133)

## 0.11.2 (2025-07-29)

### Fix

- :bug: post-copy tasks should run in sequence, not be dependent (#134)

## 0.11.1 (2025-07-28)

### Fix

- :bug: rename `properties` to `package_properties` (#132)

## 0.11.0 (2025-07-25)

### Feat

- :sparkles: add after copy message (#129)

## 0.10.4 (2025-07-25)

### Fix

- :bug: don't commit and add, leave that to the user (#124)

## 0.10.3 (2025-07-25)

### Refactor

- :recycle: ignore generated `*_files/` from Quarto (#120)

## 0.10.2 (2025-07-25)

### Refactor

- :fire: remove content not needed for data packages (#108)

## 0.10.1 (2025-07-25)

### Fix

- :bug: comment out unused code to pass linter (#119)

## 0.10.0 (2025-07-24)

### Feat

- :sparkles: add locked var for copyright year (#115)

## 0.9.0 (2025-07-24)

### Feat

- :sparkles: add post-copy commands to run (#101)

## 0.8.1 (2025-07-24)

### Refactor

- :recycle: limit permissions used in workflow (#105)

## 0.8.0 (2025-07-24)

### Feat

- :sparkles: pre-commit hook to check for conflicts (#102)

## 0.7.0 (2025-07-24)

### Feat

- :sparkles: increase version in `datapackage.json` file on version update (#109)

## 0.6.0 (2025-07-23)

### Feat

- :sparkles: add validator for `package_github_repo` (#93)

## 0.5.1 (2025-07-23)

### Refactor

- :recycle: tweak copier settings (#91)

## 0.5.0 (2025-07-15)

### Feat

- :sparkles: add Commitizen version bump with GitHub workflow (#71)

## 0.4.1 (2025-07-15)

### Refactor

- :recycle: revise `CITATION.cff.jinja` to use Jinja variables (#81)

## 0.4.0 (2025-07-15)

### Feat

- :sparkles: add recipe to template justfile to list all `TODO` items (#79)

## 0.3.2 (2025-07-15)

### Refactor

- :recycle: rename to MIT license (#80)

## 0.3.1 (2025-07-15)

### Refactor

- :recycle: ignore csv files when running typos (#84)

## 0.3.0 (2025-07-15)

### Feat

- :sparkles: add recipe to justfile template to (re)build the data package (#77)

### Refactor

- :recycle: Remove Ruff ignore tests option (#83)

## 0.2.0 (2025-07-15)

### Feat

- :sparkles: add Dependabot to template for workflows and Python packages (#70)
- :sparkles: create template folder with initial files (#52)
- write poetry command in just file (#7)

### Refactor

- :recycle: simplify pull request template in the template (#82)
- :recycle: `.gitignore` should be specific to data packages, not Python ones (#75)
- :recycle: revise `pyproject.toml.jinja` to use Jinja variables (#76)
- :recycle: match Sprout (#40)
