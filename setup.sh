#!/bin/sh

mkdir -p ~/.config/nvim/colors
echo "Created Neovim directories"

cp /home/gustav/dotfiles/init.vim /home/gustav/.config/nvim/init.vim
echo "Copied init.vim in Git repo to init.vim in .config/nvim"

curl -sfLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "vim-plug installed"

git clone --quiet https://github.com/tomasr/molokai
cp molokai/colors/molokai.vim .config/nvim/colors
echo "Molokai colorscheme downloaded and installed"

echo "All done."
