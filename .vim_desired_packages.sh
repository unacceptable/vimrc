#!/usr/bin/env bash
set -e

main(){
    vim_pathogen
    install_nerdtree
}

vim_pathogen(){
    mkdir -p ~/.vim/autoload ~/.vim/bundle && 
        curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
}

install_nerdtree(){
    git clone \
        https://github.com/scrooloose/nerdtree.git \
        ~/.vim/bundle/nerdtree

    git clone \
        https://github.com/Xuyuanp/nerdtree-git-plugin.git \
        ~/.vim/bundle/nerdtree-git-plugin
}

main
