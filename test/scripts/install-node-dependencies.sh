#!/usr/bin/env bash
set -e

npm install -g generator-jhipster --ignore-scripts spawn-sync

git clone --single-branch --branch add-skip-install-support https://github.com/ruddell/ignite.git
pushd ignite
npm link
popd

# set yarn network-timeout to 10 minutes
yarn config set network-timeout 600000
