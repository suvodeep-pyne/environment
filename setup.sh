#!/usr/bin/env bash
#
# Setup script. Sets up bash, vim and other environments
#

REPO=`dirname "$0"`
REPO=`cd "$REPO";pwd`
echo "REPO path: $REPO"

# Check if HOME exists
if [ -z "$HOME" ]; then
    echo "HOME is not set. Exiting.."
    exit 1
fi

# backup existing file by rename if exists
function backup() {
    if [ -e $1 ]; then
        echo "renaming $1 to $1.bak"
        mv $1 $1.bak
    fi
}

# setup link
function setup() {
    if [ ! -e $2 ]; then
        echo "source file: $2 does not exist"
        exit 2
    fi
    backup $1
    ln -s $2 $1
}

# setup vim
mkdir -p ~/.vim
setup ~/.vimrc $REPO/vimrc

if [ ! -e ~/.vim/autoload/pathogen.vim ]; then 
    echo "Installing Pathogen..."
    mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
    echo "done."
fi

# set global editor to vim
git config --global core.editor "vim"

# setup bashrc
# setup ~/.bashrc $REPO/bashrc

