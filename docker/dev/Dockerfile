FROM dotfiles.base

# Install Brew
COPY homebrew homebrew
RUN homebrew/install.sh

ENV PATH="${PATH}:/home/linuxbrew/.linuxbrew/bin"

# Bundle
COPY Brewfile .
RUN brew bundle

COPY . .
RUN sudo chown -R $USER:$USER /home/${USER}

RUN scripts/bootstrap

CMD ["zsh"]
