@_default:
    just --list --unsorted

@_checks: check-spelling check-commits
@_tests: (test "true") (test "false")
@_builds: build-contributors build-website build-readme

# Run all build-related recipes in the justfile
run-all: update-quarto-theme update-template _checks _tests _builds

# Install the pre-commit hooks
install-precommit:
  # Install pre-commit hooks
  uvx pre-commit install
  # Run pre-commit hooks on all files
  uvx pre-commit run --all-files
  # Update versions of pre-commit hooks
  uvx pre-commit autoupdate

# Update the Quarto seedcase-theme extension
update-quarto-theme:
  # Add theme if it doesn't exist, update if it does
  quarto update seedcase-project/seedcase-theme --no-prompt

# Update files in the template from the copier parent folder
update-template:
  cp .pre-commit-config.yaml .editorconfig template/
  cp .github/pull_request_template.md template/.github/

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

# Test that a data package can be created from the template
test cc0_license="true":
  sh ./test-template.sh {{ cc0_license }}

# Test template with the manual questionnaire answers
test-manual:
  mkdir -p _temp/manual
  uvx copier copy --trust -r HEAD . _temp/manual/test-template

# Clean up any leftover and temporary build files
cleanup:
  rm -rf _temp

# Build the website using Quarto
build-website:
  uvx --from quarto quarto render

# Re-build the README file from the Quarto version
build-readme:
  uvx --from quarto quarto render README.qmd --to gfm

# Generate a Quarto include file with the contributors
build-contributors:
  sh ./tools/get-contributors.sh seedcase-project/template-python-project > docs/includes/_contributors.qmd
