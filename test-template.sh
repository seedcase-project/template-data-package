#!/usr/bin/env bash

# Needs these arguments:
#
# 1. cc0_license: true or false
# 2. hosting_provider: netlify or gh-pages
# 3. for_seedcase: true or false

# Argument naming -----
cc0_license="${1}"
hosting_provider="${2}"
for_seedcase="${3}"

if [ $# -ne 3 ]; then
  echo "Usage: sh $0 <cc0_license> <hosting_provider> <for_seedcase>"
  echo "Example: sh $0 true netlify true"
  exit 1
fi

# Set up variables and functions for the test -----
test_name="${cc0_license}-${hosting_provider}-${for_seedcase}"
test_dir="$(pwd)/_temp/auto/$test_name"
template_dir="$(pwd)"

# Needs two arguments:
#
# 1. Template directory
# 2. Destination directory
copy () {
  # `-r HEAD` means to copy from the current HEAD, including uncommitted changes
  uvx copier copy $1 $2 \
    -r HEAD \
    --defaults \
    --data github_user="first-last" \
    --data cc0_license=$cc0_license \
    --data for_seedcase=$for_seedcase \
    --data hosting_provider=$hosting_provider \
    --overwrite
}

# Pre-test setup -----
# Remove the leftover directory from previous runs
rm -rf $test_dir
mkdir -p $test_dir

# Check initial creation -----
# TODO: Find some way to test the `update` command
# Any step that fails will exit the script with an error and not continue
echo "Testing copy for new projects when: 'cc0_license'='$cc0_license', 'hosting_provider'='$hosting_provider', 'for_seedcase'='$for_seedcase' -----------"
(
  cd $test_dir &&
    copy $template_dir $test_dir &&
    git init -b main &&
    git add . &&
    git commit --quiet -m "test: initial copy" &&
    # Check that recopy works -----
    echo "Testing recopy when: 'cc0_license'='$cc0_license', 'hosting_provider'='$hosting_provider', 'for_seedcase'='$for_seedcase' -----------" &&
    rm .gitignore &&
    git add . &&
    git commit --quiet -m "test: preparing to recopy from the template" &&
    uvx copier recopy \
      -r HEAD \
      --defaults \
      --overwrite &&
    # Check that copying onto an existing package works -----
    echo "Testing copy in existing projects when: 'cc0_license'='$cc0_license', 'hosting_provider'='$hosting_provider', 'for_seedcase'='$for_seedcase' -----------" &&
    rm .gitignore .copier-answers.yml &&
    git add . &&
    git commit --quiet -m "test: preparing to copy onto an existing package" &&
    copy $template_dir $test_dir
)
