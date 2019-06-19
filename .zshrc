export LANG=ja_JP.UTF-8

# Color setting
autoload -Uz colors
colors

# History setting
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# Prompt
PROMPT="%{$fg_bold[green]%}%n@%m%{${reset_color}%} %~
%# "

autoload -Uz compinit
compinit

zstyle ':completion:*' match-list 'm:{a-z}={A-Z}'

setopt no_beep
setopt auto_cd
cdpath=(.. ~)

# Pushd setting
DIRSTACKFILE="$HOME/.cache/zsh/dirs"
if [[ -f $DIRSTACKFILE ]] && [[ $#dirstack -eq 0 ]]; then
  dirstack=( ${(f)"$(< $DIRSTACKFILE)"} )
  [[ -d $dirstack[1] ]] && cd $dirstack[1]
fi
chpwd() {
  print -l $PWD ${(u)dirstack} >$DIRSTACKFILE
}

DIRSTACKSIZE=20

setopt auto_pushd pushd_silent pushdtohome
setopt pushdignoredups
setopt pushdminus

setopt share_history
setopt hist_ignore_all_dups

# Alias

alias la='ls -a'
alias ll='ls -lh'
alias mkdir='mkdir -p'
alias ls='ls -F --color=auto'
alias dirs='dirs -v'

# Vim setting
bindkey -v
