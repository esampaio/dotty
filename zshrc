export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="sorin"
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

plugins=(sudo git rvm rails ruby cloudapp heroku osx pj)

source $ZSH/oh-my-zsh.sh
HISTSIZE=999999999
SAVEHIST=$HISTSIZE

# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin

# Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# brew
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# golang
export GOPATH="$HOME/Dropbox/projects/go"
export PATH="/usr/local/go/bin:$GOPATH/bin:$PATH"

# rust
source $HOME/.cargo/env

# node
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

export ANDROID_HOME="$HOME/Library/Android/sdk"

export PATH="$ANDROID_HOME/platform-tools:$PATH"

# yarn
export PATH="$PATH:`yarn global bin`"

export PROJECT_PATHS=~/Dropbox/projects

eval "$(rbenv init -)"
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"

gam() { "/Users/esampaio/bin/gam/gam" "$@" ; }

clean_pdf() {
  FILE=$1
  FILE="${FILE%%.*}"
  echo "#############"
  echo $1
  echo "#############"
  if [ -e $1 ]
  then
    cp $1 ${FILE}.clean.pdf
    exiftool -all:all= ${FILE}.clean.pdf
    exiftool -all:all ${FILE}.clean.pdf
    exiftool -extractEmbedded -all:all ${FILE}.clean.pdf
    qpdf --linearize ${FILE}.clean.pdf ${FILE}.clean2.pdf
    exiftool ${FILE}.clean2.pdf
    echo "#############"
  else
    echo "File not found!"

  fi
}

function gam() { "/Users/esampaio/bin/gam/gam" "$@" ; }
