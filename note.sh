# Install Pow
brew install wget
curl get.pow.cx | sh
gem install powder

# Install PHP and required packages
brew tap josegonzalez/homebrew-php
brew install php53 php53-apc php53-gearman php53-intl php53-mcrypt php53-mongo phploc pdepend phpmd php-code-sniffer phpcpd phpunit composer
pear config-set auto_discover 1
pear install -f pear.netpirates.net/phpDox-0.5.0
pear channel-discover pear.phpqatools.org
pear install --alldeps phpqatools/PHP_CodeBrowser

# Install MySQL
brew install mysql
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
