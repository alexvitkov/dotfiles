# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s autocd
#set -o vi
#bind '"jk":vi-movement-mode'
#bind '"kj":vi-movement-mode'
bind "\C-p:previous-history"
bind "\C-n:next-history"

alias gdb='gdb -tui -q'
alias vi='nvim'
alias vim='nvim'
alias la='ls -a'
alias ll='ls -al'
alias p='sudo pacman'
alias s='sudo systemctl'
alias j='sudo journalctl'
alias em='doas emerge'
alias py='python'
alias ls='ls --color=auto'
alias run='chmod +x ./run.sh && ./run.sh'
alias tst='chmod +x ./test.sh && ./test.sh'
alias grep='grep --color=auto'
alias g='grep -i'
alias search='grep -RI'
alias copy='xclip -selection clipboard'
alias ppaste='xclip -o -selection clipboard'

alias tks='tmux kill-session -t'
alias ta='tmux attach'
alias tat='tmux attach -t'

alias gm='git merge'
alias gd='git diff'
alias ga='git add'
alias gaa='git add -A'
alias gap='git add -Ap'
alias gr='git remove'
alias gs='git status'
alias gco='git checkout'
alias gb='git branch'
alias gc='git commit'
alias gcm='git commit -m'
alias gl='git log'
alias gp='git push'
alias gpl='git pull'
alias scu='systemctl --user'
export NPM_PACKAGES="$HOME/.npm-packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
export PATH="$PRIVATE/bin:$DOTFILES/bin:$NPM_PACKAGES/bin:/opt/cross/bin:$HOME/bin:$HOME/.local/bin:$PATH:$HOME/go/bin"
unset MANPATH
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

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

PATH="/home/alex/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/alex/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/alex/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/alex/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/alex/perl5"; export PERL_MM_OPT;
