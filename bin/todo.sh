#!/bin/bash

# 终端启动时获取云端最新版本
#cd ~/.todo-vim;git pull origin $(git_current_branch)
#echo "更新成功"

TODO=$(cd "$(dirname "$0")/../";pwd)
# 定义别名
todo() { 
	vim $TODO/*.todo -u $TODO/.vimrc_for_todo 
} # 专属的vimrc启动 
#上传
todo-upload(){
	echo "正上传todo到云端"
	cd $TODO
	git add --all
	git commit -m "`whoami` @  `hostname` in `date +%y-%m-%d=%H:%M:%S`"
	git push origin master
	cd -
}
#下载
todo-download(){
	echo "正获取todo最新版本记录"
	cd $TODO
	git pull origin master
	cd -
}
#提交记录
todo-history(){
	echo "获取todo版本存储历史"
	cd $TODO
	git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %C(bold blue)%s%Creset %Cgreen(%cr) <%an>%Creset' --abbrev-commit --date=relative
	cd -
}
#版本回退
todo-fallback(){
	if [ $# -eq 0 ];then
		echo "指令后缺少版本号"
	else
		echo "todo版本回退"
		cd $TODO
		git reset --hard $1
		cd -
	fi
}
#版本 变更记录
todo-changeLog(){
	echo "获取todo版本变更记录"
	cd $TODO
	git reflog
	cd -
}
todo-setting(){
	$TODO/bin/setting.sh
}

# 每次启动都显示todo
todo-download
echo "Todo 未完成列表";cat $TODO/*.todo |sed 's/\t/    /g'|grep '[$@☐]'  # 每次启动shell都会显示todo
