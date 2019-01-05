tap "homebrew/bundle"
tap "homebrew/cask"
tap "homebrew/cask-fonts"
tap "homebrew/cask-versions"
tap "homebrew/core"
tap "llvm-hs/llvm"
tap "puma/puma"

brew "autoconf"
brew "automake"
brew "cling"
brew "cmake"
brew "coreutils"
brew "curl"
brew "docker-completion"
brew "docker-compose-completion"
brew "dos2unix"
# brew "git", link: false
brew "git-lfs"
brew "libtool"
brew "graphicsmagick"
brew "imagemagick"
brew "jmeter"
brew "libksba"
brew "libyaml"
brew "llvm@5"
brew "mono", link: false
brew "ninja"
brew "openssl@1.1"
brew "pandoc"
brew "pkg-config"
brew "readline"
# brew "python"
brew "python@2"
brew "rustup-init"
brew "socat"
brew "spark"
brew "tmux"
brew "watch"
brew "watchman"
brew "wget"
brew "zsh"
brew "zsh-completions"

unless ENV['HOMEBREW_SYSTEM'] == 'Linux'
  brew "gcc"
  brew "mas"
  brew "putty"
  brew "tesseract", args: ["with-all-languages"]

  cask "font-fira-code"
  cask "font-hack-nerd-font"
  cask "spectacle"
  cask "virtualbox"
  cask "visual-studio-code"
  cask "visual-studio-code-insiders"
  mas "GarageBand", id: 682658836
  mas "GIPHY CAPTURE", id: 668208984
  mas "iMovie", id: 408981434
  mas "Keynote", id: 409183694
  mas "Microsoft Remote Desktop", id: 715768417
  mas "MindNode", id: 1289197285
  mas "MindNode Pro", id: 402398561
  mas "Numbers", id: 409203825
  mas "Pages", id: 409201541
  mas "Wunderlist", id: 410628904
  mas "Xcode", id: 497799835
end
