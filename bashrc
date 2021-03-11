export NPM_PACKAGES="$HOME/.npm-packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
export PATH="$PRIVATE/bin:$DOTFILES/bin:$NPM_PACKAGES/bin:/opt/cross/bin:$HOME/bin:$HOME/.local/bin:$PATH:$HOME/.go/bin"
unset MANPATH
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
export GOPATH="$HOME/.go"

lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        if [ -d "$dir" ]; then
            if [ "$dir" != "$(pwd)" ]; then
                cd "$dir"
            fi
        fi
    fi
}

alias e='lfcd'
alias r='lfcd'

export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

# export PS1="\[\033[38;5;1m\]\u\[$(tput sgr0)\]\[\033[38;5;2m\]@\[$(tput sgr0)\]\[\033[38;5;3m\]\h\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;5m\]\\$\[$(tput sgr0)\] "
