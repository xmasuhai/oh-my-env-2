#!/bin/bash

#Print current user
whoami

#Print current system
uname -a

echo "-----------------------------"

# Print Node.js version
node_version=$(node --version)
echo "Node.js version: $node_version"

# Print npm version
npm_version=$(npm --version)
echo "npm version: $npm_version"

# Print pnpm version
pnpm_version=$(pnpm --version)
echo "pnpm version: $pnpm_version"

# Print yarn version
yarn_version=$(yarn --version)
echo "yarn version: $yarn_version"

echo "-----------------------------"

nrm_current=$(nrm current)
echo "nrm current: $nrm_current"

echo "-----------------------------"

# Print ruby version
ruby_version=$(ruby --version)
echo "ruby version: $ruby_version"

# Print go version
go_version=$(go version)
echo "go version: $go_version"
