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

### Base image

Build the base image first.

```bash
DOCKER_USER=christraeger docker build --tag=dotfiles.base docker/base
```

### Production

Simulates setting up a new system.

```bash
docker build --tag=dotfiles -f docker/prod/Dockerfile .
docker run -it dotfiles
```

### Development

Faster development using Docker layers.

```bash
docker build --tag=dotfiles -f docker/dev/Dockerfile .
docker run -it -v ~/.dotfiles:/home/adrian/.dotfiles dotfiles
```

### Docker Hub

```bash
docker pull adriancarriger/dotfiles
docker run -it -e "DOCKER_USER=adrian" adriancarriger/dotfiles
```

## Thanks

Thank you [Zach Holman](https://github.com/holman) for creating [componentized dotfiles](https://github.com/holman/dotfiles)!
