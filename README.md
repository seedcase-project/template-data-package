# An opinionated template for Data Packages built with Seedcase packages

This repository contains a template for setting up a new [Data
Package](https://datapackage.org/) following the Seedcase structure. Use
this template to quickly get started with a new Data Package with all
the necessary files and configurations in place, including for
developing the Data Package. See the features section below for details
on what is included in this template.

## Using this template

You need these programs installed in order to use this template.

- [Git](https://git-scm.com/)
- [Python](https://www.python.org/)
- [uv](https://docs.astral.sh/uv/)
- [just](https://just.systems/man/en/)

Once you have these installed, open a terminal and move into the directory
where you want to create the new Data Package and run the following command:

``` bash
# Copy into the current directory with "."
uvx copier copy --trust gh:seedcase-project/template-data-package .
```

> [!CAUTION]
> This template runs some post-copy commands using your terminal. In order
> to run them, you need to use the `--trust` option. Review the
> [`copier.yml`](copier.yaml) file, under the `_tasks` key to see what
> commands will be run after copying the template, so you can know and trust
> what the commands are doing. Unfortunately, this template can't be used
> without the `--trust` option.

### Post-creation setup

These steps are mainly for us in the Seedcase Project to set up the
repository with the settings we use, but you can follow them if you want
to set up your Data Package in a similar way.

After copying the template, while in the directory of the new Data Package,
run the following:

``` bash
just install-precommit
```

Next, install [`spaid`](https://github.com/seedcase-project/spaid) and use the
following commands to run the next setup steps:

``` bash
spaid_gh_create_repo_from_local -h
spaid_gh_set_repo_settings -h
spaid_gh_ruleset_basic_protect_main -h
```

Some configuration is needed after copying this template to a new
repository, including configuration external to the repository.

-   The template file `.github/workflows/release-package.yml` requires
    installing the
    [auto-release-token](https://github.com/apps/auto-release-token)
    GitHub App to be installed, as well as a GitHub secret called
    `UPDATE_VERSION_TOKEN` and a variable called `UPDATE_VERSION_APP_ID`
    to be set up in the repository (or organization) settings. See this
    [guide](https://guidebook.seedcase-project.org/operations/security#using-github-apps-to-generate-tokens)
    for more details on how to set this up.

## Features

-   Use [uv](https://docs.astral.sh/uv/) to manage the Data Package.
-   Use [Polars](https://www.pola.rs/) for data manipulation.
-   Use [Seedcase Sprout](https://sprout.seedcase-project.org/) to
    create and modify the Data Package.
-   Licensed under the open data license TODO. This is added by default,
    but you can delete or modify it if it isn't what you want or can
    use.
-   Build management with [justfile](https://just.systems/man/en/).
-   Check typos with [typos](https://github.com/crate-ci/typos).
-   Code formatting and linting with
    [ruff](https://docs.astral.sh/ruff/).
-   Pre-commit hooks with [pre-commit](https://pre-commit.com/).
-   GitHub workflows for automatically adding Pull Requests and Issues
    to a project board.
-   Pull Request template for easy creation of new Pull Requests.
-   VS Code settings for common settings for contributors using VS Code.
-   EditorConfig for common cross-editor settings for contributors.
-   `CITATION.cff` file for citation information.
-   Website generation with [Quarto](https://quarto.org/).
-   Folder and file structure that mimics a Python package to take
    advantage of Python's packaging ecosystem.
-   `pyproject.toml` for tracking dependencies and project metadata.
