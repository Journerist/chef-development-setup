sudo -u $(node -e "require('./settings.json').user" -p) [ -f /Users/$(node -e "require('./settings.json').user" -p)/.ssh/id_rsa.pub ] && echo "SSH public key found" || sudo -u $(node -e "require('./settings.json').user" -p) ssh-keygen -t rsa 
sudo -u $(node -e "require('./settings.json').user" -p) /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
knife supermarket install dmg
knife supermarket install zip_app
chef-client -j settings.json -z -o recipe['binaryLinks'],recipe['dmg'],recipe['mas'],recipe['cask'],recipe['git'],recipe['tower'],recipe['nodejs'],recipe['sublime'],recipe['docker'],recipe['zip_app'],recipe['kaleidoscope'],recipe['java'],recipe['eclipse'],recipe['chrome']
