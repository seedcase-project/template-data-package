# Template for Seedcase Python packages

This repository contains a template for setting up new data example
repos in Seedcase. The first step is to create a new repository using
this template. This can easily be done by clicking the "Use this
template" button on the repository page or by using the GitHub CLI:

``` bash
# NAME is the name to give the new repository
gh repo create NAME --template seedcase-project/template-data-package
```

## Setting things up after cloning

To add uv:

1. Delete the `pyproject.toml` file.
2. In the terminal run `uv init`.
3. Look at the Git pane and take what was removed and move it over into
    the new `pyproject.toml` file. You can mimic what was done in
    `example-seed-beetle` repo.

Then, in the terminal, run:

``` bash
uv add polars pyjanitor
uv add seedcase-sprout@git+https://github.com/seedcase-project/seedcase-sprout
uv add --dev ruff commitizen pre-commit typos
```

## Setting things up

Use the commands found in
[`spaid`](https://github.com/seedcase-project/spaid) repo to run the
next setup steps.
