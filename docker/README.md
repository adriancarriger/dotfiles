# Docker   🐳

## Base image

Build the base image first.

```bash
DOCKER_USER=christraeger docker build --tag=dotfiles.base docker/base
```

## Production

Simulates setting up a new system.

```bash
docker build --tag=dotfiles -f docker/prod/Dockerfile .
docker run -it dotfiles
```

## Development

Faster development using Docker layers.

```bash
docker build --tag=dotfiles -f docker/dev/Dockerfile .
docker run -it -v ~/.dotfiles:/home/adrian/.dotfiles dotfiles
```
