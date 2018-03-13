ITERM_VERSION=3_1_5
EXPECTED_SHA='7159ce6c96fe5c61653a6d6a9a45facfe4a9abff5bfa063e361efd70f89fd769'

[ -e /Applications/iTerm.app ] && exit 0
rm -rf ~/temp/iTerm2-$ITERM_VERSION.zip ~/temp/iTerm.app
(mkdir -p ~/temp; cd $_; curl -O "https://iterm2.com/downloads/stable/iTerm2-$ITERM_VERSION.zip")
actual_sha=$(shasum -a 256 ~/temp/iTerm2-$ITERM_VERSION.zip | awk '{print $1}')
[ $EXPECTED_SHA != $actual_sha ] && exit 1
unzip ~/temp/iTerm2-$ITERM_VERSION.zip -d ~/temp
mv ~/temp/iTerm.app/ /Applications/
rm -rf ~/temp/iTerm2-$ITERM_VERSION.zip

# Thanks! 👍 => http://stratus3d.com/blog/2015/02/28/sync-iterm2-profile-with-dotfiles-repository/
# Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/dotfiles/iterm2"
# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
