# An opinionated template for Data Packages built with Seedcase packages

This repository contains a template for setting up a new [Data
Package](https://datapackage.org/) following the Seedcase structure. Use
this template to quickly get started with a new Data Package with all
the necessary files and configurations in place, including for
developing the Data Package. See the features section below for details
on what is included in this template.

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
