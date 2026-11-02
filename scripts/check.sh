#!/bin/sh
# Build the site and check every link and image in the output.
# Needs Docker running. Pass --external to also check links to other sites.
set -e
cd "$(dirname "$0")/.."
EXTERNAL="--disable-external"
[ "$1" = "--external" ] && EXTERNAL=""
docker run --rm \
  -v "$PWD":/site -v adamisom-site-gems:/usr/local/bundle -w /site \
  ruby:3.3 sh -c "bundle install --quiet && JEKYLL_ENV=production bundle exec jekyll build && bundle exec htmlproofer _site $EXTERNAL --ignore-urls '/linkedin.com/' --swap-urls '^https\://adamisom.github.io:'"
