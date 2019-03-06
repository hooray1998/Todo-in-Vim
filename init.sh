#!/bin/bash

# 复制相关vim插件
if [ ! -e $HOME/.vim ]
then
	mkdir $HOME/.vim
fi
if [ ! -e $HOME/.vim/autoload ]
then
	mkdir $HOME/.vim/autoload
fi

cp ./.vim_Plugins/autoload/plug.vim $HOME/.vim/autoload/
cp -r .vim_Plugins/* $HOME/.vim/

cp bin/.vimrc_git ./.vimrc_for_todo

if [ "/bin/zsh" = $SHELL ]
then
	echo "source `pwd`/bin/todo.sh" >> $HOME/.zshrc
	echo "请运行 source $HOME/.zshrc 刷新"
elif [ "/bin/bash" = $SHELL ]
then
	echo "source `pwd`/bin/todo.sh" >> $HOME/.bashrc
	echo "请运行 source $HOME/.bashrc 刷新"
else
	echo '将如下语句添加到shell配置文件（例如zsh的.zshrc或bash的.bashrc）中去'
	echo "source `pwd`/bin/todo.sh"
	echo "并运行source {您的shell配置文件} 刷新"
fi
