# Install OhMyZSH
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install tools
brew install imagemagick mercurial pwgen tmux vim watch node nvm yarn wget ack diff-so-fancy

# Install ruby dependencies
brew install rbenv rbenv-gemset ruby-build

# Install DataStores
brew install mongodb redis memcached mysql postgresql
brew services start mongodb
brew services start redis
brew services start memcached
brew services start mysql
brew services start postgresql

# Install Powerline Fonts
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd ..
rm -rf fonts
