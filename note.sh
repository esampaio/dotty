# Install OhMyZSH
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install tools
brew install ant apple-gcc42 imagemagick mercurial openssl pwgen tmux vim watch zlib node nvm

# Install ruby dependencies
brew install rbenv rbenv-gemset rbenv-gem-rehash ruby-build

# Install Pow
brew install wget
curl get.pow.cx | sh
gem install powder

# Install PHP and required packages
# brew tap josegonzalez/homebrew-php
# brew install php53 php53-xdebug php53-apc php53-gearman phpdocumentor phpdox php53-intl php53-mcrypt php53-mongo phploc pdepend phpmd php-code-sniffer phpcpd phpunit composer
# pear config-set auto_discover 1
# pear install -f pear.netpirates.net/phpDox-0.5.0
# pear channel-discover pear.phpqatools.org
# pear install --alldeps phpqatools/PHP_CodeBrowser

# Install DataStores
brew install mongodb redis memcached mysql postgresql
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
ln -sfv /usr/local/opt/memcached/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist
ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist
ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.redis.plist
