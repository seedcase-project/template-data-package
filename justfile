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
  temp_dir="_temp/test-data-package"
  rm -rf $temp_dir
  mkdir -p $temp_dir
  # vcs-ref means the current commit/head, not a tag.
  # `.` means the current directory contains the template.
  uvx copier copy --vcs-ref=HEAD . $temp_dir \
    --defaults \
    --data package_abbrev= "test-data-package" \
    --data package_github="first-last/test-data-package" \
    --data author_given_name="First" \
    --data author_family_name="Last" \
    --data author_email="first.last@example.com"
  # TODO: Other checks/tests?

cleanup:
  #!/bin/zsh
  temp_dir=$("_temp/test-data-package"))
  rm -rf $temp_dir
