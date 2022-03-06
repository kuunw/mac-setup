#!/bin/zsh
## There is a copy (not necessarily the latest version) on my iCloud

# Verify that the installation of homebrew and git are done
{brew doctor} || {clear && echo "There is a problem with brew" && exit 0} 
clear
{git version} || {clear && echo "Git is not proprely installed" && exit 0}
clear

# Install SP1
echo "Do you want to install Development Pack? [Y?]"
echo "Following packages are included:\n"
echo "- raycast
- visual-studio-code
- anaconda" 
read confirm
if [[ $confirm =~ [yY](es)* ]]
then
    brew install --cask raycast visual-studio-code anaconda
fi
