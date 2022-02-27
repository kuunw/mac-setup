#!/bin/zsh
## There is a copy (not necessarily the latest version) on my iCloud

# Verify that the installation of homebrew and git are done
{brew doctor} || {clear && echo "There is a problem with brew" && exit 0}
{git version} || {clear && echo "Git is not proprely installed" && exit 0}

# Install apps
