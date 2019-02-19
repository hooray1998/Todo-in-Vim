#!/bin/bash

echo '以下配置内容可多次执行'
echo '请按任意键继续......'
read -n1

TODO=$(cd "$(dirname "$0")/../";pwd)
read -p  '是否需要多版本存储功能 [y/N]' version
if [ 'y' = $version ]; then
	read -p  '是否需要云端同步功能 [y/N]' remote
	if [ 'y' = $remote ]; then
		echo '你配置了Todo-in-Vim多平台云同步版'
		cp $TODO/bin/.vimrc_cloud $TODO/.vimrc_for_todo
	else
		echo '你配置了Todo-in-Vim本地多版本存储版'
		cp $TODO/bin/.vimrc_git $TODO/.vimrc_for_todo
	fi
else
	echo '你配置了Todo-in-Vim极简版'
	cp $TODO/bin/.vimrc_tiny $TODO/.vimrc_for_todo
fi

