FROM ubuntu
RUN apt-get update && apt-get install -y \
    zsh \
    git \
    wget \
    vim \
    tmux \
    autojump \
    locales 
# zsh 
RUN sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
    && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting \
    && git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions \
    && sed -i "/^plugins=/c\plugins=(git autojump zsh-syntax-highlighting zsh-autosuggestions)" $HOME/.zshrc 


COPY config/. /root/

# extra rc
RUN cat /root/extra_rc >> /root/.zshrc && rm /root/extra_rc

# ssh agent and locale
RUN locale-gen "en_US.UTF-8" && echo "export LC_ALL=en_US.UTF-8\nexport LANG=en_US.UTF-8\neval \`ssh-agent\`>/dev/null" >> $HOME/.zshrc


# clean
RUN rm -rf /var/lib/apt/lists/*

# keep it running
CMD tail -f /dev/null