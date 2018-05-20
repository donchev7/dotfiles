#!/bin/bash
# Automize everything!

dotfiles_dir=~/dotfiles
bakdir=~/dotfiles_bak
dotfiles="bashrc gitconfig bash_aliases functions bash_profile"


# Basic dotfiles install.
echo -n "Creating $bakdir for backup of any existing dotfiles in ~ ..."
mkdir -p $bakdir
echo "done"
echo -n "Changing to the $dotfiles_dir directory ..."
cd $dotfiles_dir
echo "done"
for file in $dotfiles; do
    echo "Moving any existing dotfiles from ~ to $bakdir"
    mv ~/.$file ~/dotfiles_bak/                                                                                                         
    echo "Creating symlink to $file in home directory."
    ln -s $dotfiles_dir/$file ~/.$file
done
