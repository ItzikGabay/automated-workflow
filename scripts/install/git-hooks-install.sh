#!/bin/sh

# Checking if git hooks exists
echo "# Installing reposetory git hooks..."
cd $git_hooks_path

if [ -f "prepare-commit-msg.sample" ]; then
  echo "# prepare-commit-msg.sample not found! activating file..."
  mv prepare-commit-msg.sample prepare-commit-msg
  cat $current_directory/scripts/commits/commit-msg-validate.sh > $git_hooks_path/prepare-commit-msg
  chmod +x $git_hooks_path/prepare-commit-msg
else
  echo "prepare-commit-msg.sample found! Skipping activating the file..."
fi

cd ../../

# For future reference-
# request=$(curl -L https://gist.githubusercontent.com/ItzikGabay/dda720e57fa068b4a13b0df590a2b62f/raw/87c0551acec762a1091c02052109d4d53da34fa8/commit-msg.sh)
# echo $request