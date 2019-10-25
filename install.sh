#!/bin/bash
# ====================================================
#   Copyright (C)2019 All rights reserved.
#
#   Author        : luwenzheng
#   Email         : redgaojila@gmail.com
#   File Name     : install.sh
#   Last Modified : 2019-10-25 11:09
#   Describe      : 只能用于Ubuntu和openSUSE
#
# ====================================================

DISTRO=$(head -n 1 /etc/os-release | awk -F = '{print$2}' | sed 's@"@@g')


function ubuntu_install() {
    # 基础软件安装
    sudo apt install -y i3
    sudo apt install -y ranger
    sudo apt install -y nvim
    sudo apt install -y neomutt
    sudo apt install -y git
    sudo apt install -y conky
    sudo apt install -y fzf
    sudo apt install -y emacs
    sudo apt install -y alacritty
    sudo apt install -y mpd
    sudo apt install -y tmux
    sudo apt install -y autojump

    # zsh
    sudo chsh luwenzheng -s /bin/zsh
    sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
    git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
    git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

    # tmux
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
}

function suse_install() {
    # 基础软件安装
    sudo zypper install -y i3
    sudo zypper install -y ranger
    sudo zypper install -y nvim
    sudo zypper install -y neomutt
    sudo zypper install -y git
    sudo zypper install -y conky
    sudo zypper install -y fzf
    sudo zypper install -y emacs
    sudo zypper install -y alacritty
    sudo zypper install -y mpd
    sudo zypper install -y tmux
    sudo zypper install -y autojump

    # zsh
    sudo chsh luwenzheng -s /bin/zsh
    sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
    git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
    git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

    # tmux
    git clone https://github.com/gpakosz/.tmux.git
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
}

function global_config() {
    ln -s ./.config/ranger ~/.config/
    ln -sf ./.config/mpd ~/.config/
    ln -sf ./.config/alacritty ~/.config/
    ln -sf ./.config/neomutt ~/.config/
    ln -sf ./.config/nvim ~/.config/
    ln -sf ./.config/i3 ~/.config/
    ln -sf ./.config/rofi-power ~/.config/
    ln -sf ./.config/compton ~/.config/
    ln -sf ./.zsh ~/.zsh
    ln -sf ./.zshrc ~/.zshrc
    ln -sf ./.conkyi3 ~/.conkyi3
    ln -sf ./.conkyrc ~/.conkyrc
    ln -sf ./.tmux ~/.tmux
    ln -sf ./.tmux.config ~/.tmux.config
    sudo ln -sf ./etc/supervisor /etc/
}

case $DISTRO in
    Ubuntu )
        ubuntu_install
        global_config
        ;;
    openSUSE* )
        suse_install
        global_config
        ;;
esac
