# History cache
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt EXTENDED_HISTORY
setopt MENU_COMPLETE

setopt NO_BEEP

# enable colors + prompt
autoload -Uz colors && colors
PS1="%B%{$fg[red]%}[%{$fg[magenta]%}%~%{$fg[red]%}]%{$fg[green]%} >%{$reset_color%}%b "


# name completion
autoload -Uz compinit
# for some reason suggestions had different colors from ls
zstyle ':completion:*' list-colors 'di=1;34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
# add hidden items to autocomplete
_comp_options+=(globdots)

# see: https://github.com/Mach-OS/Machfiles (minimal plugin manager without oh-my-zsh)
source "$ZDOTDIR/zsh-functions"

zsh_add_file zsh-vi-mode
zsh_add_file zsh-aliases

zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "zsh-users/zsh-autosuggestions"


export EDITOR="nvim"
export TERMINAL="alacritty"
export PATH="/home/xzy/.cargo/bin:$PATH"

source /usr/share/fzf/key-bindings.zsh
