#!/bin/bash

SCRIPT_RELDIR=$( dirname -- "${BASH_SOURCE[0]:-$0}"; )
SCRIPT_DIR="$( cd -- "$SCRIPT_RELDIR" &> /dev/null && pwd 2> /dev/null; )";

echo Installing the configurations locally.

mkdir -p $HOME/.config/zsh


# Using GNU stow to install dotfiles
#
# Stow will create symlinks from the 'package' (in our case, each configuration)
# to the Target Directory (specified with -t).
#
# For example, stowing "my-package/dir" to the target "/etc"
# will create a symlink "/etc/dir" to "my-package/dir"

# Installing ZSH
stow -nv --target ~ --dir $SCRIPT_DIR zsh-local

