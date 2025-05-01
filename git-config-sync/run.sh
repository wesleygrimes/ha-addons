#!/usr/bin/with-contenv bashio

# shellcheck disable=SC2034
CONFIG_PATH=/data/options.json
REPO_URL="$(bashio::config 'repo_url')"
REPO_BRANCH="$(bashio::config 'repo_branch')"

echo "Syncing..."

git clone "$REPO_URL"
git checkout "$REPO_BRANCH"
git pull --merge

echo "Synced."
