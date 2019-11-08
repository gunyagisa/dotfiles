export LANG=ja_JP.UTF-8

# Color setting
autoload -Uz colors
colors

# Prompt
PROMPT="%{$fg_bold[green]%}%n@%m%{${reset_color}%} %~
%# "

autoload -Uz compinit
compinit

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

setopt no_beep
setopt auto_cd
cdpath=(.. ~)

# Alias
alias sudo='sudo '
alias vim='nvim'
alias la='ls -a'
alias ll='ls -lh'
alias mkdir='mkdir -p'
alias ls='ls -F --color=auto'
alias dirs='dirs -v'

