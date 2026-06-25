@_default:
  just --list --unsorted

# Run all build-related recipes in the justfile
run-all: update-quarto-theme sync-template-files check-all format-md test-all build-all

# Run all check-related recipes
check-all: check-spelling check-urls

# Run all test-related recipes
test-all: (test "true" "netlify") (test "false" "gh-pages")

# Run all build-related recipes
build-all: build-contributors build-website build-readme

# List all TODO items in the repository
list-todos:
  grep -R -n \
  --exclude-dir=.quarto \
  --exclude-dir=template \
  --exclude-dir=_temp \
  --exclude-dir=_site \
  --exclude=justfile \
  --exclude=copier.yaml \
  "TODO" *

# Install the pre-commit hooks
install-precommit:
  uvx pre-commit install
  uvx pre-commit autoupdate
  uvx pre-commit run --all-files

# Update (or add if not present) the Quarto seedcase-theme extension
update-quarto-theme:
  quarto update seedcase-project/seedcase-theme --no-prompt

# Update files in the template from the Copier parent folder
sync-template-files:
  cp .pre-commit-config.yaml .editorconfig CODE_OF_CONDUCT.md template/
  cp .github/pull_request_template.md template/.github/

# Check for spelling errors in files
check-spelling:
  uvx typos --config .config/typos.toml

# Check that URLs work
check-urls:
  lychee . \
    --verbose \
    --extensions md,qmd,jinja \
    --exclude-path "_badges.qmd"

# Format Markdown files
format-md:
  # Use both rumdl and panache, for different purposes
  uvx rumdl fmt --silent
  # `includes` option doesn't work with Jinja files, so do manually
  uvx rumdl fmt --silent **/*.md.jinja
  uvx --from panache-cli panache format . --quiet

# Test template creation with specific parameters: `cc0_license` and `hosting_provider`
test cc0_license="true" hosting_provider="netlify" for_seedcase="true":
  sh ./test-template.sh {{ cc0_license }} {{ hosting_provider }} {{ for_seedcase }}

# Test template creation through use of the question approach
test-manual:
  mkdir -p _temp/manual
  rm -rf _temp/manual/test-template
  uvx copier copy -r HEAD . _temp/manual/test-template

# Clean up any leftover and temporary build files
cleanup:
  rm -rf _temp

# Re-build the README file from the Quarto version
build-readme:
  # Needs to use uvx to run Python chunks
  uvx --from quarto quarto render README.qmd --to gfm

# Generate a Quarto include file with the contributors
build-contributors:
  sh ./tools/get-contributors.sh seedcase-project/template-data-package > docs/includes/_contributors.qmd

# Build the website using Quarto
build-website:
  quarto render

# Preview the website with automatic reload on changes
preview-website:
  quarto preview

# Check for and apply updates from the template
update-from-template:
  uvx copier update --defaults

# Reset repo changes to match the template
reset-from-template:
  uvx copier recopy --defaults
