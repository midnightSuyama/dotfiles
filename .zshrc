# Keybind
bindkey -e

# Prompt
autoload -Uz colors && colors
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
autoload -Uz compinit && compinit
setopt auto_menu
setopt list_packed
setopt magic_equal_subst

export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# VCS
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '[%b]'
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () {
    psvar=()
    vcs_info
    [[ -n $vcs_info_msg_0_ ]] && psvar[1]="$vcs_info_msg_0_"
}
RPROMPT="%1(v|%F{green}%1v%f|)"

# Change directory
setopt auto_cd
setopt auto_pushd
setopt hist_ignore_all_dups

autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs
zstyle ':chpwd:*' recent-dirs-max 100

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

#function peco-select-history() {
#    BUFFER=$(\history -n 1 | tail -r | peco --query "$LBUFFER")
#    CURSOR=$#BUFFER
#    zle clear-screen
#}
#zle -N peco-select-history
#bindkey '^r' peco-select-history

#function peco-cdr() {
#    local selected_dir=$(cdr -l | awk '{ print $2 }' | peco)
#    if [ -n "$selected_dir" ]; then
#        BUFFER="cd ${selected_dir}"
#        zle accept-line
#    fi
#    zle clear-screen
#}
#zle -N peco-cdr
#bindkey '^@' peco-cdr

# rbenv
#export RBENV_ROOT=$HOME/.rbenv
#export PATH="$RBENV_ROOT/bin:$PATH"
#eval "$(rbenv init - --no-rehash)"

# pyenv
#export PYENV_ROOT=$HOME/.pyenv
#export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init - --no-rehash)"
#eval "$(pyenv virtualenv-init -)"

# nodenv
#export NODENV_ROOT=$HOME/.nodenv
#export PATH="$NODENV_ROOT/bin:$PATH"
#eval "$(nodenv init - --no-rehash)"

# Emacs Tramp
#if [[ "$TERM" == "dumb" ]]
#then
#    unsetopt zle
#    unsetopt prompt_cr
#    unsetopt prompt_subst
#    unfunction precmd
#    unfunction preexec
#    PS1='$ '
#fi
