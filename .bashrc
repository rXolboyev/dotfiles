export EDITOR='nvim'
export VISUAL='zeditor'
export HISTCONTROL=erasedups:ignoredups:ignorespace:ignoreboth

[[ $- != *i* ]] && return

if [ -d "$HOME/.bin" ] ;
then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;

then PATH="$HOME/.local/bin:$PATH"
fi

if command -v dircolors >/dev/null 2>&1; then
    eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi

bind "set completion-ignore-case on"

PS1='\u@\h:\w\$'
