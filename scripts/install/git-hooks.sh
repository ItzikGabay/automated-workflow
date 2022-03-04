# Variables

current_directory=$PWD
package_json_path="$current_directory/package-lock.json"
git_hooks_path=$current_directory/.git/hooks


# # Step 1 - Check if package.json exists

# if [ -f $package_json_path ]; then
#   echo "package-lock.json found! Running npm CI"
#   npm ci
# else
#   echo "package-lock.json not found! running npm install"
#   npm install
# fi


# Step 2 - Check if git hooks exists

echo "# Installing reposetory git hooks..."
cd $git_hooks_path

if [ -f "pre-commit.sample" ]; then
  echo "# pre-commit.sample not found! activating file..."
  mv pre-commit.sample pre-commit
  cat $current_directory/scripts/commits/commit-msg-validate.sh > $git_hooks_path/pre-commit
  chmod +x $git_hooks_path/pre-commit
else
  echo "pre-commit.sample found! Skipping activating the file..."
fi


# Step 3 - Start the app
echo "# Done! --------------"
echo "Starting the app...\n\n"
npm start

exit 0

# For future reference-
# request=$(curl -L https://gist.githubusercontent.com/ItzikGabay/dda720e57fa068b4a13b0df590a2b62f/raw/87c0551acec762a1091c02052109d4d53da34fa8/commit-msg.sh)
# echo $request