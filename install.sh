ln -sf "$DOTFILES/bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILES/bash_profile" "$HOME/.bash_profile"

mkdir -p ~/.config/nvim/colors
ln -sf "$DOTFILES/vimcolors" "$HOME/.config/nvim/colors/good.vim"
ln -sf "$DOTFILES/vimrc"     "$HOME/.config/nvim/init.vim"
ln -sf "$DOTFILES/sxhkdrc"   "$HOME/.config/sxhkd/sxhkdrc"
