#!/usr/bin/env bash

set -e

if [[ $TRAVIS_BRANCH == 'master' ]]
  docker build . -t islandswars-ineundo
fi