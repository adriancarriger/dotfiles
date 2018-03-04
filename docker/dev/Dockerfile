FROM dotfiles.base

# Install Brew
COPY homebrew homebrew
RUN homebrew/install.sh

# Bundle
ENV PATH="${PATH}:/home/linuxbrew/.linuxbrew/bin"
COPY Brewfile .
COPY zsh/install.sh zsh/

RUN brew update && ./zsh/install.sh && brew bundle

COPY . .
USER root
RUN chown -R $USER:$USER /home/${USER}
USER $USER
RUN /home/${USER}/.dotfiles/scripts/bootstrap

CMD ["zsh"]
