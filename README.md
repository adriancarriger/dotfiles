# Adrian's dotfiles

🍭 My personal dotfiles. 🍭 Works with macOS and Ubuntu!

## Features

* [ZSH](https://en.wikipedia.org/wiki/Z_shell), [oh-my-zsh](http://ohmyz.sh/), and [Powerlevel9k theme](https://github.com/bhilburn/powerlevel9k)
* [Brewfile](https://github.com/Homebrew/homebrew-bundle) (linux and Mac)
* Automated install and settings setup for all Mac apps
* [nvm](https://github.com/creationix/nvm)
* [Vs Code](https://code.visualstudio.com/)
* [Spectacle](https://www.spectacleapp.com/)

## Install

```bash
git clone https://github.com/adriancarriger/dotfiles.git ~/.dotfiles
~/.dotfiles/scripts/bootstrap
```

## Docker

Try out these Dotfiles using Docker! 🐳

```bash
docker pull adriancarriger/dotfiles
docker run -it -e "DOCKER_USER=adrian" adriancarriger/dotfiles
```

## Thanks

* [Zach Holman](https://github.com/holman) - [componentized dotfiles](https://github.com/holman/dotfiles)
* [Mathias Bynens](https://github.com/mathiasbynens) - [awesome macOS defaults](https://github.com/mathiasbynens/dotfiles)

## License

dotfiles is licensed under the MIT Open Source license.
For more information, see the [LICENSE](LICENSE) file in this repository.
