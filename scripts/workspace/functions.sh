#!/bin/sh

# Checking if package.json exists

isPackageJsonExist() {
  if [ -f $package_json_path ]; then
    echo "package-lock.json found! Running npm CI"
    npm ci
  else
    echo "package-lock.json not found! running npm install"
    npm install
  fi
}

