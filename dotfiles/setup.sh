# Install base tools
. $PWD/setup-scripts/install-base.sh


# Configure zsh
. ./setup-scripts/configure-zsh.sh


# Git Config
git config --global --add url."git@github.com:".insteadOf "https://github.com/"

git config --global user.name "Ilian Iliev"
git config --global user.email "ilian@ilian.io"

export GPG_TTY=$(tty)
git config --global gpg.program gpg
git config --global commit.gpgsign true


# Installing Python related stuff
#which -s virtualenvwrapper
if ! pip3 freeze | grep -q 'virtualenvwrapper'; then
  echo "Installing virtualenvwrapper"
  pip3 install virtualenvwrapper
fi


which -s pyenv
if [[ $? != 0 ]] ; then
  echo "Installing pyenv"
  brew install pyenv
fi


# Installing NVM
brew install nvm

# TODO: Update it to add nvm to zshrc
# source $(brew --prefix nvm)/nvm.sh
# For node version before 16 we need the following
# softwareupdate --install-rosetta


# Direnv
brew install direnv

# TODO: Update it to add direnv to zshrc
eval "$(direnv hook zsh)"



# Ngrok
brew install ngrok/ngrok/ngrok

