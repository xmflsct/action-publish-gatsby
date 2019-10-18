#!/bin/bash

set -e

yarn
gatsby build
yarn run gh-pages -d public -b $1 -u ''"$3"' ''<'"$4"'>' -r 'https://'"$2"'@github.com/'"$5"'.git' -m 'Build of '"$5"''
