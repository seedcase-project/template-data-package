@_default:
    just --list --unsorted

@_tests: test

# Run all build-related recipes in the justfile
run-all: check-spelling check-commits test build-website build-readme

# Install the pre-commit hooks
install-precommit:
  # Install pre-commit hooks
  uvx pre-commit install
  # Run pre-commit hooks on all files
  uvx pre-commit run --all-files
  # Update versions of pre-commit hooks
  uvx pre-commit autoupdate

# Check the commit messages on the current branch that are not on the main branch
check-commits:
  #!/usr/bin/env bash
  branch_name=$(git rev-parse --abbrev-ref HEAD)
  number_of_commits=$(git rev-list --count HEAD ^main)
  if [[ ${branch_name} != "main" && ${number_of_commits} -gt 0 ]]
  then
    # If issue happens, try `uv tool update-shell`
    uvx --from commitizen cz check --rev-range main..HEAD
  else
    echo "On 'main' or current branch doesn't have any commits."
  fi

# Check for spelling errors in files
check-spelling:
  uvx typos

# Test and check that a data package can be created from the template
test:
  #!/usr/bin/env bash
  test_name="test-data-package"
  test_dir="$(pwd)/_temp/$test_name"
  template_dir="$(pwd)"
  commit=$(git rev-parse HEAD)
  rm -rf $test_dir
  # vcs-ref means the current commit/head, not a tag.
  uvx copier copy $template_dir $test_dir \
    --vcs-ref=$commit \
    --defaults \
    --trust \
    --data package_abbrev=$test_name \
    --data package_github_repo="first-last/${test_name}" \
    --data author_given_name="First" \
    --data author_family_name="Last" \
    --data author_email="first.last@example.com" \
    --data review_team="@first-last/developers" \
    --data cc0_license="true" \
    --data github_board_number=22
  # Run checks in the generated test data package
  cd $test_dir
  git add .
  git commit -m "test: initial copy"
  just check-python check-spelling
  # TODO: Find some way to test the `update` command
  # Check that recopy works
  echo "Testing recopy command -----------"
  rm .cz.toml
  git add .
  git commit -m "test: preparing to recopy from the template"
  uvx copier recopy \
    --vcs-ref=$commit \
    --defaults \
    --overwrite \
    --trust
  # Check that copying onto an existing data package works
  echo "Using the template in an existing package command -----------"
  rm .cz.toml .copier-answers.yml LICENSE-MIT.md LICENSE.md
  git add .
  git commit -m "test: preparing to copy onto an existing package"
  uvx copier copy \
    $template_dir $test_dir \
    --vcs-ref=$commit \
    --defaults \
    --trust \
    --overwrite \
    --data package_abbrev=$test_name \
    --data package_github_repo="first-last/${test_name}" \
    --data author_given_name="First" \
    --data author_family_name="Last" \
    --data author_email="first.last@example.com" \
    --data review_team="@first-last/developers" \
    --data cc0_license="false" \
    --data github_board_number=22

# Clean up any leftover and temporary build files
cleanup:
  rm -rf _temp

# Build the Python docstrings as a section in the website using quartodoc
build-quartodoc:
  # To let Quarto know where python is.
  export QUARTO_PYTHON=.venv/bin/python3
  # Delete any previously built files from quartodoc.
  # -f is to not give an error if the files don't exist yet.
  rm -rf docs/reference
  uv run quartodoc build

# Build the documentation website using Quarto
build-website:  build-quartodoc
  uv run quarto render --execute

# Preview the documentation website with automatic reload on changes
preview-website: build-quartodoc
  uv run quarto preview --execute

# Re-build the README file from the Quarto version
build-readme:
  uvx --from quarto quarto render README.qmd --to gfm
