#!/bin/bash

set -e

yarn
gatsby build
yarn run gh-pages -d public -b $1 -u ''"$3"' ''<'"$4"'>' -r 'https://'"$2"'@github.com/${{ GITHUB_REPOSITORY }}.git' -m 'Build of ${{ GITHUB_SHA }}'
