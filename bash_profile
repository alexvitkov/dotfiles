export DOTFILES="$HOME/dotfiles"
export PRIVATE="$HOME/private"

[[ -f ~/.bashrc ]] && . ~/.bashrc

export GTK_THEME=Arc

export XDG_DOWNLOAD_DIR="$HOME/downloads"
export XDG_DESKTOP_DIR="$HOME"
export XDG_DOCUMENTS_DIR="$HOME"
export XDG_MUSIC_DIR="$HOME"
export XDG_PICTURES_DIR="$HOME"
export XDG_PUBLICSHARE_DIR="$HOME"
export XDG_TEMPLATES_DIR="$HOME"
export XDG_VIDEOS_DIR="$HOME"

# fuck firefox
rm -rf ~/Desktop

export SSH_AUTH_SOCK=${XDG_RUNTIME_DIR}/gnupg/S.gpg-agent.ssh
