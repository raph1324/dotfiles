# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=500
SAVEHIST=200
bindkey -v
export KEYTIMEOUT=1
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/raph1324/.zshrc'

autoload -U compinit colors vcs_info promptinit
colors
compinit
promptinit
# End of lines added by compinstall

# custom prompt
# supported colors: Red, Blue, Green, Cyan, Yellow, Magenta, Black & White
PS1="%B%(?..[%?] )%b%{$fg_bold[blue]%}%n%{$fg[white]%}@%{$fg[red]%}%m%{$fg_no_bold[default]%}❱ %{$reset_color%}"
RPS1="%F${1:-blue}}%~$f"

#custom vi prompt setup
function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} %F{${1:-blue}}%~%f $EPS1"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

# This will set the default prompt to the walters theme
# prompt walters
