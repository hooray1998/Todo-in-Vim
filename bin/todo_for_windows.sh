#!/bin/bash

# 终端启动时获取云端最新版本
#cd ~/.todo-vim;git pull origin $(git_current_branch)
#echo "更新成功"

#dir=$(cd "$(dirname "$0")";pwd)
# 定义别名
todo() { 
	vim $HOME/Todo-in-Vim/*.todo -u $HOME/Todo-in-Vim/.vimrc_for_todo 
} # 专属的vimrc启动 
alias cm='git add --all ; git commit -m '
# 版本回退
alias grst='git reset --hard '
alias fallback='grst'
alias backspace='grst'
alias 回退='grst'
#上传
alias ggpush='git push origin master'
alias upload='ggpush'
#下载
alias ggpull='git pull origin master'
alias download='ggpull'
# 每次启动都显示todo
cat $HOME/Todo-in-Vim/*.todo # 每次启动shell都会显示todo
