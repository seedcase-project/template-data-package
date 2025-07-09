# An opinionated template for data packages built with Seedcase packages

This repository contains a template for setting up new data packages.
The first step is to create a new repository using this template. This
can easily be done by clicking the "Use this template" button on the
repository page or by using the GitHub CLI:

## Features

-   Use [uv](https://docs.astral.sh/uv/) to manage the data package.
-   Use [polars](https://www.pola.rs/) for data manipulation.
-   Use [Seedcase Sprout](https://sprout.seedcase-project.org/) to
    create and modify the data package.
-   Licensed under the open data license TODO. This is added by default,
    but you can delete it if it isn't what you want or can use.
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

## Using this template

To use this template, we strongly recommend using it with
[uv](https://docs.astral.sh/uv/). Once you have it installed, move into
the directory where you want to create the new data package and run the
following command:

``` bash
# Copy into the current directory with "."
uvx copier copy gh:seedcase-project/template-data-package .
```

## Post-copy, GitHub set up

Use the commands found in
[`spaid`](https://github.com/seedcase-project/spaid) repo to run the
next setup steps.
