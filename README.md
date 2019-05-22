# dotfiles
All my personal dotfiles stored in one place

First of all clone
```zsh
git clone https://github.com/joshrost/dotfiles.git
```

## i3
#### installation

```zsh
sudo apt install i3 scrot feh
```
#### link config
```zsh
ln -s ~/dotfiles/i3 ~/.config/i3
ln -s ~/dotfiles/backgrounds ~/.config/backgrounds
```

## rofi
#### installation
```zsh
sudo apt install rofi fonts-hack-ttf
```
**Note:** [Rofi](https://github.com/DaveDavenport/rofi) >1.4.0 needed
#### link config
```zsh
ln -s ~/dotfiles/rofi ~/.config/rofi
```

## terminator with zsh
#### installation

```zsh
sudo apt install terminator zsh curl

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# oh-my-zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
# spaceship theme
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
```
#### link config
```zsh
ln -s ~/dotfiles/git/gitconfig ~/.gitconfig
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc
ln -s ~/dotfiles/zsh/zsh_aliases ~/.zsh_aliases
ln -s ~/dotfiles/terminator ~/.config/terminator
```

## vim
Have a look [here](https://github.com/joshrost/.vim) for my vim config


