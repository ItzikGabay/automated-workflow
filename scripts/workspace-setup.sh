#!/bin/sh

echo "Loading variables..."

source $PWD/scripts/workspace/constants.sh

echo "Installing git hooks..."

source $PWD/scripts/install/git-hooks-install.sh

echo "Installing the workspace..."

source $PWD/scripts/install/workspace-install.sh

echo "Everything done - Enjoy!!"

exit 0