export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="sorin"
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

plugins=(sudo git rvm rails ruby cloudapp heroku osx pj)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin

# Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# brew
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# golang
export GOPATH="$HOME/Dropbox/projects/go"
export PATH="/usr/local/go/bin:$GOPATH/bin:$PATH"

# node
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# yarn
export PATH="$PATH:`yarn global bin`"

export PROJECT_PATHS=~/Dropbox/projects

eval "$(rbenv init -)"
