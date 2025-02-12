#!/usr/bin/env bash
# exit on error
set -o errexit
bin/rails db:system:change --to=mysql
bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean
