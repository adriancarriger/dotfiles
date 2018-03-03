FROM ubuntu:16.04

# Create a user
ENV USER ${DOCKER_USER:-adrian}
ENV LANG "en_AU.UTF-8"
ENV LANGUAGE "en_AU:en"

RUN groupadd --gid 1000 $USER \
  && useradd --uid 1000 --gid $USER --shell /bin/bash --create-home $USER

RUN apt-get update && apt-get install -y \
  git \
  curl \
  sudo \
  ruby \
  vim \
  locales

RUN locale-gen en_US.UTF-8

# Enable sudo for $USER
RUN echo "$USER ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
RUN echo "root:Docker!" | chpasswd

COPY . /home/${USER}/.dotfiles/.
RUN chown -R $USER:$USER /home/${USER}

WORKDIR /home/${USER}
USER $USER

RUN /home/${USER}/.dotfiles/scripts/bootstrap

ENV PATH="${PATH}:/home/linuxbrew/.linuxbrew/bin"

CMD ["zsh"]
