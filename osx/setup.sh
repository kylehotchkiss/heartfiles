# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Node.js and Yarn Package Manager
brew install node yarn dnsmasq

# OSX Dock
defaults write com.apple.Dock tilesize -int 48
defaults write com.apple.Dock size-immutable -bool yes
defaults write com.apple.Dock contents-immutable -bool yes
defaults write com.apple.Dock position-immutable -bool yes

# OSX Dock: Add spaces
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'

# Restart Dock
killall Dock

# DNSMasq - Map *.dev to 127.0.0.0.1
cp $(brew list dnsmasq | grep /dnsmasq.conf.example$) /usr/local/etc/dnsmasq.conf
sudo cp $(brew list dnsmasq | grep /homebrew.mxcl.dnsmasq.plist$) /Library/LaunchDaemons/
echo "address=/dev/127.0.0.1" >> /usr/local/etc/dnsmasq.conf
sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.dnsmasq.plist

sudo mkdir -p /etc/resolver
sudo tee /etc/resolver/dev >/dev/null <<EOF
nameserver 127.0.0.1
EOF
