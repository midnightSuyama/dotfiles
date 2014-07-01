# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Keybind
bindkey -e

# Prompt
autoload -U colors && colors
PROMPT="%{${fg[yellow]}%}[%n@%m %1~]%(!.#.$) %{${reset_color}%}"
PROMPT2="%{${fg[yellow]}%}%_> %{${reset_color}%}"

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups
setopt hist_reduce_blanks
setopt share_history

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

# Completion
autoload -U compinit && compinit
setopt auto_menu
setopt list_packed
setopt magic_equal_subst

export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# Change directory
setopt auto_cd
setopt auto_pushd

# Beep
setopt nobeep

# Alias
case "${OSTYPE}" in
    freebsd*|darwin*)
        alias ls='ls -G'
        ;;
    linux*)
        alias ls='ls --color=auto'
        ;;
esac
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -al'
#alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs -nw'

# Function
function chpwd() { ls }
