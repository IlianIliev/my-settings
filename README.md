# my-settings
Contains a bunch of settings I use for my machine



## Installing the dotfiles (from this directory)
### Install zsh
### Install oh-my-zsh
```
ln -s ~/workspace/my-settings/dotfiles/my-theme.zsh-theme $ZSH/themes/my-theme.zsh-theme
ln -s ~/workspace/my-settings/dotfiles/zshenv ~/.zshenv

cd ~/.oh-my-zsh/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

```