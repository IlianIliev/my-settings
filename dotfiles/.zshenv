# Needed for openssl
# export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

export NVM_DIR=~/.nvm

# Brew
export PATH="/opt/homebrew/bin:$PATH"

# Needed by Terraform / tfswitch
export PATH=$PATH:~/bin

# Golang stuff
export GOPATH=$HOME/workspace
export PATH="$PATH:$HOME/.rvm/bin:$GOPATH/bin" # Add RVM to PATH for scripting
export GOPRIVATE=github.com/lifesum/*

# virtualenvwrapper settings
# By default on Mac `pip3 install virtualenv` puts the binary in the Library
# so we need to add it to the path
export PATH=$PATH:~/Library/Python/3.9/bin/
export VIRTUAL_ENV_DISABLE_PROMPT=1

export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
# source /Users/ilian/Library/Python/3.9/bin/virtualenvwrapper.sh


[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion



# TODO: This should probably be moved to a plist file e.g. https://www.grzegorowski.com/how-to-remap-single-mac-keyboard-key
# Custom keyboard mapping
# mapping the §/± to `/~ (backtick/tilde) - this is useful for Mac internal keyboard # 0x700000064
# Mapping the CapsLock to Play/Pause button so I can use it with an external keyboard # 0x000700000039
# echo "Setting custom key map"
# hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x700000064,"HIDKeyboardModifierMappingDst":0x700000035}, {"HIDKeyboardModifierMappingSrc":0x000700000039, "HIDKeyboardModifierMappingDst":0x000C000000CD}]}'



# Localstack alias
# default region should be us-east-1
alias awslocal="AWS_ACCESS_KEY_ID=XXX AWS_SECRET_ACCESS_KEY=XXX AWS_DEFAULT_REGION=us-east-1 aws --endpoint-url=http://localhost:4566"


# GPG commits signing
export GPG_TTY=$(tty)
git config --global gpg.program gpg
git config --global commit.gpgsign true


# load terminfo modules to make the associative array $terminfo available
zmodload zsh/terminfo


fpath=( ~/.zfuncs "${fpath[@]}" )
# FPATH=~/.zfuncs:$FPATH

autoload -Uz gotools && gotools
autoload -Uz halfpage && halfpage
autoload -Uz kubetools && kubetools
