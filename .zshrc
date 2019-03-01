# 基本設定
autoload -U compinit
autoload -Uz vcs_info
autoload -Uz colors
colors
compinit

# cdコマンドなしで移動できる
setopt auto_cd

# cd +Tabでディレクトリ履歴表示
setopt auto_pushd
setopt pushd_ignore_dups 

# PROMPT
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true #formats 設定項目で %c,%u が使用可
zstyle ':vcs_info:git:*' stagedstr "%F{green}!" #commit されていないファイルがある
zstyle ':vcs_info:git:*' unstagedstr "%F{magenta}+" #add されていないファイルがある
zstyle ':vcs_info:*' formats "%F{cyan}%c%u(%b)%f" #通常
zstyle ':vcs_info:*' actionformats '[%b|%a]' #rebase 途中,merge コンフリクト等 formats 外の表示

# プロンプト表示直前に vcs_info 呼び出し
precmd () { vcs_info }
# PROMPT='%F{6}%n%f: '
PROMPT='%F{6}%c%f: '
# RPROMPT='%~ ${vcs_info_msg_0_}'
RPROMPT='${vcs_info_msg_0_}'

# Alias
alias ll='ls -altr'
alias s='git status'
alias zs='vim ~/.zshrc'
alias zp='vim ~/.zprofile'
alias ss='source ~/.zshrc'
alias sz='source ~/.zprofile'
alias stop='docker-compose stop'
alias up='docker-compose up -d nginx redis mysql workspace'
alias p='cd ~/Projects'
alias sand='cd ~/Projects/sandbox'
