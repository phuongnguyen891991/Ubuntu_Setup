#!/bin/sh

DELAY=5

### Setup vim pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
sleep $DELAY

cd ~/.vim/bundle && git clone https://github.com/tpope/vim-sensible.git
sleep $DELAY

### Install syntastic as a Pathogen bundle
cd ~/.vim/bundle && git clone --depth=1 https://github.com/vim-syntastic/syntastic.git


echo "Quit vim and start it back up to reload it, then type: ':Helptags'"
