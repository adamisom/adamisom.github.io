#!/bin/sh
# Serve the site at http://localhost:4000 with the same gems GitHub Pages uses.
# Add --drafts to also show files in _drafts/, e.g. scripts/preview.sh --drafts
# Needs Docker running. The first run installs gems and takes a few minutes.
set -e
cd "$(dirname "$0")/.."
docker run --rm -it -p 4000:4000 \
  -v "$PWD":/site -v adamisom-site-gems:/usr/local/bundle -w /site \
  ruby:3.3 sh -c "bundle install --quiet && bundle exec jekyll serve --host 0.0.0.0 --force_polling $*"
