#!/bin/bash

# 增加todo语法高亮文件
if [ ! -e $HOME/.vim/syntax ]
then
	mkdir $HOME/.vim/syntax
fi
cp ./.todo.vim  $HOME/.vim/syntax/todo.vim
