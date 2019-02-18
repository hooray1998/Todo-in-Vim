## 前言
该程序由多个工具搭建而成<br>
- 基于Vim的快捷和高可定制性<br>
- 基于git的云同步<br>
- 使用异步执行shell的Vim插件(skywind3000/asyncrun.vim)<br>
从而实现美观的界面,快捷的Todo管理以及极快的同步速度

## 演示gif

![demo.gif](./demo.gif)

视频中vim下方一闪而过的就是git push和git pull异步执行输出的quickfix窗口

# 安装步骤
### 步骤一_下载该项目并部署到远程仓库

- 方式一:(需要多平台同步功能)
	-	Fork该项目到自己的github或coding上(墙内使用Coding之类的同步速度极快)
		- 项目Github地址：https://github.com/hooray1998/Todo-in-Vim
		- 项目Coding地址：https://dev.tencent.com/u/Hoorayitt/p/Todo-in-Vim/git
	-	使用git clone克隆自己账户上的项目,为了方便多平台同步
-	方式二:(需要多平台同步功能)
	-	git clone 本项目到本地, 然后push到自己的云端仓库上
-	方式三:(不需要多平台同步,只在本机使用)
	-	git clone 项目到本地
	-	修改.vimrc_for_todo,(全文搜索no-update,将含有no-update的三行下面的配置注释掉即可)

### 步骤二 执行如下命令, 将todo语法高亮文件增加到.vim/syntax中

` ./init.sh`

### 步骤三 修改你的.zshrc或者.bashrc中并刷新
```
vim ~/.zshrc或vim ~/.bashrc
# 增加如下内容
source {当前路径}/todo.sh
# 退出后使用source刷新
source ~/.zshrc 或source ~/.bashrc
```

### 步骤四 安装相关Vim插件

- 情景一: 使用Plug管理插件
	- 输入**todo**运行
	- 输入:PlugInstall安装插件,安装成功后退出再次todo即可

- 情景二: 使用Vundle管理插件
	- 使用vim修改.vimrc_for_todo配置文件的前几行,将其修改为Vundle插件管理的格式
	- 保存退出,输入todo
	- 输入:PluginInstall安装插件,安装成功后退出再次todo即可

## 注意

- eg：在使用git remote add origin git@……Todo-in-Vim.git绑定远程仓库时记得要使用ssh协议，用http似乎每次都要输密码
- eg: 安装完Plug后第一次启动todo的时候会因为相关插件未安装而报错，这时候不要退出，在vim中输入:PlugInstall安装完成后方可。
- eg: 如果不需要使用airline,在.vimrc_for_todo文件中注释掉即可.
- eg: 使用<Space>+e 快速退出时等待上传完成才退出则需要取消注释配置文件第255行,注释掉257行
- eg: 如果github同步速度慢，建议放到国内的git远程仓库。

# 快捷键
	
normal模式|功能
:-:|:-
Enter|☑️并下移
Ctrl-J|☑️
Ctrl-K|取消☑️
Ctrl-N|添加⭐️
Ctrl-H|取消⭐️
BackSpace|取消⭐️
Space-W|保存文件并上传
Space-E|快速退出
]]|跳转到下一个列表
[[|跳转到上一个列表
Tab|多个缓存文件切换


insert模式|功能
:-:|:-
Tab|向右缩进
Shift-Tab|向左缩进
jj|回到normal模式


# DIY你的Todo

### 主题定制

使用其他的vim主题，默认使用vim-monokai-tasty主题

### 高亮定制

修改~/.vim/syntax/目录下的todo.vim语法高亮文件
参考博客[努力学习Vimscript](http://learnvimscriptthehardway.stevelosh.com/chapters/45.html#exercises)
### 快捷键定制

修改.vimrc_for_todo的第192-239行内容，参考着改就好

### 图标定制

配置文件223行有一些备选，也可自己在网上找.(配置文件和语法高亮文件当中对应的都要替换)

### 同步方式定制

- 若选择在shell启动和退出时更新，则注释掉配置文件中250之后的部分,在.bashrc和.bash_logout(或zsh的.zshrc和.zlogout)中手动添加git push和git pull.
- 若只在本机使用不需要同步，修改.vimrc_for_todo,(全文搜索no-update,将含有no-update的三行下面的配置注释掉即可)

## 感谢每个前来体验的人，希望能多给些建议。可qq私信，邮箱，或发起issue。谢谢
- QQ: 1165131346
- E-Mail:hoorayitt@gmail.com
