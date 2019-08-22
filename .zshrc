[ -e $HOME/.zsh/exports         ] && source $HOME/.zsh/exports
[ -e $HOME/.zsh/aliases         ] && source $HOME/.zsh/aliases
[ -e $HOME/.zsh/powerline       ] && source $HOME/.zsh/powerline
[ -e $HOME/.zsh/sources         ] && source $HOME/.zsh/sources
[ -e $HOME/.zsh/plugins         ] && source $HOME/.zsh/plugins
[ -e $HOME/.zsh/personal        ] && source $HOME/.zsh/personal

export ZSH="/home/luwenzheng/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh

# bindings
bindkey ';' autosuggest-accept
