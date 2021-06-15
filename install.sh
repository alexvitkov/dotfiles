mkdir -p ~/.config/nvim/colors
mkdir -p ~/.config/sxhkd

mkdir -p ~/.config/wal/templates
mkdir -p ~/.config/wal/colorschemes/{dark,light}
mkdir -p ~/.config/rofi
mkdir -p ~/.config/dunst
cp "$DOTFILES"/wal/* ~/.config/wal/templates


ln -sf "$DOTFILES/inputrc"      "$HOME/.inputrc"
ln -sf "$DOTFILES/bash_profile" "$HOME/.bash_profile"
ln -sf "$DOTFILES/vimcolors"    "$HOME/.config/nvim/colors/good.vim"
ln -sf "$DOTFILES/vimrc"        "$HOME/.config/nvim/init.vim"
ln -sf "$DOTFILES/sxhkdrc"      "$HOME/.config/sxhkd/sxhkdrc"
ln -sf "$DOTFILES/picom.conf"   "$HOME/.config/picom.conf"
ln -sf "$DOTFILES/xinitrc"      "$HOME/.xinitrc"           
ln -sf "$DOTFILES/gdbinit"      "$HOME/.gdbinit"           
ln -sf "$DOTFILES/tmux.conf"    "$HOME/.tmux.conf"         
ln -sf "$DOTFILES/roficonfig"   "$HOME/.config/rofi/config"
ln -sf "$DOTFILES/bashrc"       "$HOME/.bashrc"

cp "$DOTFILES/themes"/* ~/.config/wal/colorschemes/dark

if [ -d ~/.cache/wal ]; then
    ln -sf ~/.cache/wal/my.rofi     "$HOME/.config/rofi/theme.rasi"
    ln -sf ~/.cache/wal/my.dunstrc  "$HOME/.config/dunst/dunstrc"
fi

if which rofi &> /dev/null; then
    ln -sf "$(which rofi)" "$DOTFILES/bin/dmenu"
else
    echo "you shoud install rofi"
fi
