#!/usr/bin/env bash
set -euo pipefail

bundle exec jekyll build
bundle exec htmlproofer ./_site --checks Links,Images,Scripts --disable-external --allow-hash-href
bundle exec mdl -g -i .
