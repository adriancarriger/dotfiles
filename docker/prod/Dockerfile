FROM dotfiles.base

USER root

COPY . /home/${USER}/.dotfiles/.
RUN chown -R $USER:$USER /home/${USER}

WORKDIR /home/${USER}
USER $USER

RUN /home/${USER}/.dotfiles/scripts/bootstrap

ENV PATH="${PATH}:/home/linuxbrew/.linuxbrew/bin"

CMD ["zsh"]
