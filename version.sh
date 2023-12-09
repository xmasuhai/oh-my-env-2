#!/bin/bash

# 判断是否存在 版本
ifHasVersionPrint() {
  local exe="${1:?"exe name missing."}"
  local install_info=$2
  if command_path=$(command -v $1 2>/dev/null); then
    echo "${exe^^} Version: $($1 --version)"
  else
    echo "${exe^^} is not installed"
    if [[ -n $install_info ]]; then
      echo "Please run: $install_info"
    fi
  fi
}

# Function to print Node.js version in current path
print_env_version() {
  # Print separator
  echo "-------print_env_version-------"
  #Print current user
  whoami
  #Print current system
  uname -a
  # Print Node.js version
  ifHasVersionPrint node;
  # Print nvm version
  ifHasVersionPrint nvm;
  nvm_current=$(nvm current)
  echo "nvm current: $nvm_current"
  # Print nrm current
  ifHasVersionPrint nrm 'npm install -g nrm';
  nrm_current=$(nrm current)
  echo "nrm current: $nrm_current"
  # Print npm version
  ifHasVersionPrint npm;
  # Print pnpm version
  ifHasVersionPrint pnpm 'corepack prepare pnpm@latest --activate';
  # Print yarn version
  ifHasVersionPrint yarn 'corepack prepare yarn@1.22.19 --activate';
  # Print ruby version
  ifHasVersionPrint ruby;

  # Print go version
  go_version=$(go version)
  echo "go version: $go_version"
  # Print separator
  echo "--------------------------------"
}

if [[ -n "$BASH_VERSION" ]]; then
  print_env_version
fi
