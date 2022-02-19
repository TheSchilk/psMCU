#!/bin/bash

mkdir -p ~/.config/nvim/syntax/
cp syntax/psASM.vim ~/.config/nvim/syntax/psASM.vim

mkdir -p ~/.config/nvim/ftdetect/
cp ftdetect/psASM.vim ~/.config/nvim/ftdetect/psASM.vim
cp ftdetect/psOBJ.vim ~/.config/nvim/ftdetect/psOBJ.vim
