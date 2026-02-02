#!/usr/bin/env bash
set -euo pipefail

bundle exec jekyll build
bundle exec htmlproofer ./_site --check-html --disable-external --allow-hash-href
bundle exec mdl .
