cask_args appdir: '/Applications'

tap "caskroom/cask"
tap "caskroom/fonts"
tap "caskroom/versions"
tap "homebrew/bundle"
tap "homebrew/core"
tap "puma/puma"

brew "autoconf"
# brew "automake"
brew "coreutils"
brew "curl"
brew "dos2unix"
brew "git"
brew "git-lfs"
brew "libtool"
brew "graphicsmagick"
brew "imagemagick"
brew "jmeter"
brew "libksba"
brew "libyaml"
brew "openssl@1.1"
brew "pkg-config"
brew "readline"
brew "python@2"
brew "spark"
brew "tmux"
brew "watch"
brew "watchman"
brew "zsh"

unless ENV['HOMEBREW_SYSTEM'] == 'Linux'
  brew "gcc"
  brew "mas"
  brew "putty"
  brew "tesseract", args: ["with-all-languages"]

  mas "GIPHY CAPTURE", id: 668208984
  mas "iMovie", id: 408981434
  mas "Keynote", id: 409183694
  mas "Microsoft Remote Desktop", id: 715768417
  mas "MindNode Pro", id: 402398561
  mas "Numbers", id: 409203825
  mas "Pages", id: 409201541
  mas "Wunderlist", id: 410628904
  mas "Xcode", id: 497799835

  # cask "dbeaver-community"
  cask "visual-studio-code"
  cask "caskroom/versions/visual-studio-code-insiders"
  cask "virtualbox"
  cask "caskroom/fonts/font-fira-code"
end
