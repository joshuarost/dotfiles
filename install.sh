# !/bin/bash
# Hacked version of dotfiles install script

git clone https://github.com/joshrost/dotfiles.git ~/dotfiles

sudo apt install i3 scrot feh python3-dev
ln -rs ~/dotfiles/i3 ~/.config/i3
ln -rs ~/dotfiles/backgrounds ~/.config/backgrounds

sudo apt install build-essential git cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev

sudo apt install libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev i3-wm libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev

git clone --recursive https://github.com/polybar/polybar ~/polybar.bin
cd polybar.bin
./build.sh
ln -rs ~/dotfiles/polybar ~/.config/polybar
cd

sudo apt install rofi fonts-hack-ttf
ln -rs ~/dotfiles/rofi ~/.config/rofi

sudo apt install terminator zsh curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
# spaceship theme
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

ln -rs ~/dotfiles/git/gitconfig ~/.gitconfig
ln -rs ~/dotfiles/zsh/zshrc ~/.zshrc
ln -rs ~/dotfiles/zsh/zsh_aliases ~/.zsh_aliases
ln -rs ~/dotfiles/terminator ~/.config/terminator

