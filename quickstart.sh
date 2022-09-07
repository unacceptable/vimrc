#!/usr/bin/env bash
set -e

main(){
    create_directory_structure
    # install_plugins
}

create_directory_structure(){
    DIR="$(dirname $0)"
    mkdir -p "${HOME}/.vim"
    cp -a "$DIR/.vimrc" "${HOME}/.vimrc"
}

install_plugins(){
    install_pathogen
    install_nerdtree
}

intall_pathogen(){
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
