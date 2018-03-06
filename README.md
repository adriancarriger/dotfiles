# Adrian's dotfiles

🍭 My personal dotfiles. 🍭 Works with macOS and Ubuntu!

## Install

```bash
git clone https://github.com/adriancarriger/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

## Docker

It's dockerized!   🐳

```bash
DOCKER_USER=christraeger docker build --tag=dotfiles.base docker/base
docker build --tag=dotfiles -f docker/prod/Dockerfile .
docker run -it dotfiles
```

## Thanks

Thank you [Zach Holman](https://github.com/holman) for creating [componentized dotfiles](https://github.com/holman/dotfiles)!
