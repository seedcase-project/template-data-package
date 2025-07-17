@_default:
    just --list --unsorted

# Run all build-related recipes in the justfile
run-all: check-spelling check-commits test

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

test:
  #!/bin/zsh
  test_dir="$(pwd)/_temp"
  test_name="test-data-package"
  rm -rf $test_dir
  # vcs-ref means the current commit/head, not a tag.
  # `.` means the current directory contains the template.
  uvx copier copy --vcs-ref=HEAD . $test_dir/$test_name \
    --defaults \
    --data package_abbrev=$test_name \
    --data package_github_repo="first-last/${test_name}" \
    --data author_given_name="First" \
    --data author_family_name="Last" \
    --data author_email="first.last@example.com" \
    --data review_team="@first-last/developers"
  # TODO: Other checks/tests?

cleanup:
  #!/bin/zsh
  rm -rf _temp
