mkdir -p ~/.config/nvim/colors
mkdir -p ~/.config/sxhkd

mkdir -p ~/.config/wal/templates
cp "$DOTFILES"/wal/* ~/.config/wal/templates

ln -sf "$DOTFILES/bashrc"       "$HOME/.bashrc"
ln -sf "$DOTFILES/inputrc"      "$HOME/.inputrc"
ln -sf "$DOTFILES/bash_profile" "$HOME/.bash_profile"
ln -sf "$DOTFILES/vimcolors"    "$HOME/.config/nvim/colors/good.vim"
ln -sf "$DOTFILES/vimrc"        "$HOME/.config/nvim/init.vim"
ln -sf "$DOTFILES/sxhkdrc"      "$HOME/.config/sxhkd/sxhkdrc"
ln -sf "$DOTFILES/picom.conf"   "$HOME/.config/picom.conf"
ln -sf "$DOTFILES/xinitrc"      "$HOME/.xinitrc"           
ln -sf "$DOTFILES/gdbinit"      "$HOME/.gdbinit"           

