#!/bin/sh

# Checking if package.json exists

isPackageJsonExist() {
  if [ -f $package_json_path ]; then
    echo "package-lock.json found! Skipping yarn.."
    yarn install --frozen-lockfile
  else
    echo "package-lock.json not found! running yarn install"
    yarn
  fi
}

