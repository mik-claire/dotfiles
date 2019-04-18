#!/bin/bash

dotfiles_dir=~/dotfiles/
for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

    echo "$f"
    ln -nfs $dotfiles_dir$f ~/$f
done
