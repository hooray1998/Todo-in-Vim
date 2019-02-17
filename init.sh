#!/bin/bash

# 增加todo语法高亮文件
if [ ! -e $HOME/.vim/syntax ]
then
	mkdir $HOME/.vim/syntax
fi
cp ./.todo.vim  $HOME/.vim/syntax/todo.vim
echo '将如下语句添加到shell配置文件（例如.zshrc或.bashrc）中去'
echo "source `pwd`/todo.sh"
