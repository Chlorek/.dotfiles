# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory nomatch
unsetopt autocd beep extendedglob notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/chlorek/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# My prompt
PROMPT='%S %n %s %~ %S %s %f'

# Completion choosable with arrow keys
zstyle ':completion:*' menu select

# Make delete key work
bindkey '^[[3~' delete-char

# History bindings
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search

# Home and End keys support
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

# Aliases
alias ls='ls --color=auto'
