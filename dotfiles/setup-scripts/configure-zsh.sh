# Install Oh-My-Zsh if needed
if [[ -z "${ZSH}" ]]; then
  echo "Installing Oh-My-Zsh"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

if [[ -z "${ZSH}" ]]; then
  echo "Oh-My-Zsh installation failed. Exiting..."
  exit 1
fi


# Installing zsh plugins
# I am not using ZSH_CUSTOM as it is not exported, nor I am overwriting it later
if [ ! -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ]; then
    echo "Installing zsh-syntax-highlighting"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

fi


# Linking the theme & setting it as default
ln -nsf $PWD/ilian.zsh-theme ~/.oh-my-zsh/themes/ilian.zsh-theme
sed -i'' -e 's/ZSH_THEME="robbyrussell"/ZSH_THEME="ilian"/' ~/.zshrc
sed -i'' -e 's/plugins=(.*)/plugins=(git wd zsh-syntax-highlighting nvm virtualenv)/' ~/.zshrc

# Linking the env file
ln -nsf $PWD/.zshenv ~/.zshenv


