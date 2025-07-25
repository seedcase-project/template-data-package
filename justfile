@_default:
    just --list --unsorted

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
  #!/bin/zsh
  branch_name=$(git rev-parse --abbrev-ref HEAD)
  number_of_commits=$(git rev-list --count HEAD ^main)
  if [[ ${branch_name} != "main" && ${number_of_commits} -gt 0 ]]
  then
    uvx --from commitizen cz check --rev-range main..HEAD
  else
    echo "On `main` or current branch doesn't have any commits."
  fi

# Check for spelling errors in files
check-spelling:
  uvx typos

# Test and check that a data package can be created from the template
test:
  #!/bin/zsh
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
  rm .cz.toml .copier-answers.yml LICENSE-MIT.md
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
    --data github_board_number=22

# Clean up any leftover and temporary build files
cleanup:
  #!/bin/zsh
  rm -rf _temp

# Build the website using Quarto
build-website:
  uvx --from quarto quarto render

# Re-build the README file from the Quarto version
build-readme:
  uvx --from quarto quarto render README.qmd --to gfm
