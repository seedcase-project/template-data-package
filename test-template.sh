#!/usr/bin/env bash

# Needs one argument:
#
# 1. cc0_license: true or false

# Argument naming -----
cc0_license="${1}"

if [ -z "$cc0_license" ]; then
  echo "Usage: sh $0 <cc0_license>"
  echo "Example: sh $0 true"
  exit 1
fi

# Set up variables and functions for the test -----
test_name="test-package"
test_dir="$(pwd)/_temp/$cc0_license/$test_name"
template_dir="$(pwd)"

# Needs two arguments:
#
# 1. Template directory
# 2. Destination directory
# 3. VCS ref (commit, branch, tag, etc.)
copy () {
  # `-r HEAD` means to copy from the current HEAD, including uncommitted changes
  uvx copier copy $1 $2 \
    -r HEAD \
    --defaults \
    --data github_user="first-last" \
    --data author_given_name="First" \
    --data author_family_name="Last" \
    --data author_email="first.last@example.com" \
    --data review_team="@first-last/developers" \
    --data cc0_license=$cc0_license \
    --data github_board_number=22 \
    --overwrite \
    --skip-tasks \
    --trust
}

# Pre-test setup -----
# Remove the leftover directory from previous runs
rm -rf $test_dir
mkdir -p $test_dir

# Check initial creation -----
# TODO: Find some way to test the `update` command
# Any step that fails will exit the script with an error and not continue
echo "Testing copy for new projects when: 'cc0_license'='$cc0_license' -----------"
(
  cd $test_dir &&
    copy $template_dir $test_dir &&
    git init -b main &&
    git add . &&
    git commit --quiet -m "test: initial copy" &&
    # Check that recopy works -----
    echo "Testing recopy when: 'cc0_license'='$cc0_license' -----------" &&
    rm .cz.toml &&
    git add . &&
    git commit --quiet -m "test: preparing to recopy from the template" &&
    uvx copier recopy \
      -r HEAD \
      --defaults \
      --overwrite \
      --skip-tasks \
      --trust &&
    # Check that copying onto an existing package works -----
    echo "Testing copy in existing projects when: 'cc0_license'='$cc0_license' -----------" &&
    rm .cz.toml .copier-answers.yml &&
    git add . &&
    git commit --quiet -m "test: preparing to copy onto an existing package" &&
    copy $template_dir $test_dir
)
