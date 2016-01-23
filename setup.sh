#!/bin/sh

mkdir -p .config/nvim/colors
echo "Created Neovim directories"

ln -s /home/gustav/dotfiles/.vimrc /home/gustav/.config/nvim/init.vim
echo "Symlinked .vimrc in Git repo to init.vim in .config/nvim"

curl -sfLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "vim-plug installed"

git clone --quiet https://github.com/tomasr/molokai
cp molokai/colors/molokai.vim .config/nvim/colors
echo "Molokai colorscheme downloaded and installed"

echo "All done."
