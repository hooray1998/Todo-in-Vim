#!/bin/bash

# 终端启动时获取云端最新版本
#cd ~/.todo-vim;git pull origin $(git_current_branch)
#echo "更新成功"

dir=$(cd "$(dirname "$0")";pwd)
# 定义别名
todo() { vim $dir/*.todo -u $dir/.vimrc_for_todo } # 专属的vimrc启动 
# 版本回退
alias grst='git reset --hard '
alias fallback='grst'
alias backspace='grst'
alias 回退='grst'
#上传
alias ggpush='git push origin "$(git_current_branch)"'
alias upload='ggpush'
#下载
alias ggpull='git pull origin "$(git_current_branch)"'
alias download='ggpull'

# 每次启动都显示todo
cat $dir/*.todo # 每次启动shell都会显示todo
