#!/bin/bash

echo '以下配置内容可多次执行'
echo '请按任意键继续......'
read -n1

TODO_bin=$(cd "$(dirname "$0")";pwd)
cd $TODO_bin
read -p  '是否需要多版本存储功能 [y/N]' version
if [ 'y' = $version ]; then
	read -p  '是否需要云端同步功能 [y/N]' remote
	if [ 'y' = $remote ]; then
		echo '你配置了Todo-in-Vim多平台云同步版'
		cp ./.vimrc_cloud ../.vimrc_for_todo
	else
		echo '你配置了Todo-in-Vim本地多版本存储版'
		cp ./.vimrc_git ../.vimrc_for_todo
	fi
else
	echo '你配置了Todo-in-Vim极简版'
	cp ./.vimrc_tiny ../.vimrc_for_todo
	echo "cp ./.vimrc_tiny ../.vimrc_for_todo"
fi
