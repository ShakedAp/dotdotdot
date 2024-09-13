#!/bin/bash

SCRIPT_RELDIR=$( dirname -- "${BASH_SOURCE[0]:-$0}"; )
SCRIPT_DIR="$( cd -- "$SCRIPT_RELDIR" &> /dev/null && pwd 2> /dev/null; )";

echo 'Installing the configurations globally.'
echo 'Make sure fzf is installed (TODO: install dependencies automatically).'

mkdir -p $HOME/.config/zsh
echo '#Local zsh config' > $HOME/.config/zsh/.zshrc

# Using GNU stow to install dotfiles
#
# Stow will create symlinks from the 'package' (in our case, each configuration)
# to the Target Directory (specified with -t).
#
# For example, stowing "my-package/dir" to the target "/etc"
# will create a symlink "/etc/dir" to "my-package/dir"

# Installing ZSH
stow --target /etc --dir $SCRIPT_DIR/../zsh global-layout

