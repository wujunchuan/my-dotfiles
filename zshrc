#解决unknown locale:UTF-8问问题
#see https://www.phodal.com/blog/unknown-locale-utf-8/
export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8" 
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL=
# add autojump plugin
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.h
# oh-my-zsh启用autojump插件后无法自动补全的解决办法
# see https://www.zybuluo.com/haokuixi/note/103056
autoload -U compinit && compinit
# 让bash优先搜索/usr/local下的指令，而且不会覆盖老文件，比较安全
# 搭配homebrew实用
export PATH=/usr/local/bin:/usr/local/sbin:${PATH}
# java path
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export PATH=${JAVA_HOME}/bin:$PATH

# Apache Tomcat Path:
export PATH=/usr/local/opt/tomcat@7/bin:$PATH

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
# android
export ANDROID_HOME=/Users/wujunchuan/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded. # See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="ys"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"
# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# ChangeLogs: 
#   2017-05-27 删除了 zsh-syntax-highlighting
#              因为Bug太多
plugins=(git autojump extract osx zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias cls='clear'
alias ll='ls -lh'
alias la='ls -ah'
alias vi='nvim'
alias grep="grep --color=auto"
alias -s js=vi
alias -s py=vi
alias -s txt=vi
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s rar='unrar'
alias -s 7z='7z x'
alias -s bz2='tar -xjvf'
# fuck gfw 相关的 proxy配置
alias hp='export http_proxy=http://127.0.0.1:8123 https_proxy=http://127.0.0.1:8123'
alias nhp='unset http_proxy https_proxy'
# 命令行下
alias pxy=proxychains4
# 完全代理zsh
alias pz='proxychains4 -q zsh'
# 代理单个进程(推荐)
alias x='proxychains4 -q '
alias xni='proxychains4 -q npm install'
# 在线播放视频音频
alias yg='you-get -p mpv'
# 避免误删除 使用\rm正常使用rm指令
alias rm="echo Use 'del', or the full path i.e. '/bin/rm'"
alias del="rmtrash" # del / trash are shorter than rmtrash
# 设置抓包代理 端口9999
alias zb="mitmproxy -p 9999 --no-mouse"
alias xxx="extract"
# 帮助你方便查找alias内容
alias haha="alias |grep "
#快速打开neovim的配置文件
alias nvimc="vi /Users/wujunchuan/.config/nvim/init.vim"
#打开Neovim插件的位置
alias cdplug='cd /Users/wujunchuan/.local/share/nvim/plugged'
#快速打开.zsh的配置文件
alias zshc="vi /Users/wujunchuan/.zshc"
#打开dotfiles的位置
alias mydot='cd ~/dotfiles'
#qshell
alias qiniu="qshell qupload"
alias qiniud="cd /Users/wujunchuan/qshell/"
#clear zsh history
alias clear_history='echo "" > ~/.zsh_history & exec $SHELL -l'
export NVM_DIR="/Users/wujunchuan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[[ -r $NVM_DIR/bash_completion  ]] && . $NVM_DIR/bash_completion # This is for Bash completion
