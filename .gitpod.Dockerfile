FROM gitpod/workspace-full:latest

RUN bash -c 'NODE_VERSION="16.18.1" \
    && source $HOME/.nvm/nvm.sh && nvm install $NODE_VERSION \
    && nvm use $NODE_VERSION && nvm alias default $NODE_VERSION'

RUN echo "nvm use default &>/dev/null" >> ~/.bashrc.d/51-nvm-fix
