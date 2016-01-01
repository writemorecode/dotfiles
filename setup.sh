#!/bin/sh

mkdir -p .config/nvim/colors
echo "Created Neovim directories"

ln -s /home/gustav/dotfiles/.vimrc /home/gustav/.config/nvim/init.vim
echo "Symlinked .vimrc in Git repo to init.vim in .config/nvim"

echo "All done."
