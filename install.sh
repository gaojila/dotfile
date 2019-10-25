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
    sudo apt install -y neovim
    sudo apt install -y neomutt
    sudo apt install -y git
    sudo apt install -y conky
    sudo apt install -y fzf
    sudo apt install -y emacs
    sudo apt install -y alacritty
    sudo apt install -y mpd
    sudo apt install -y tmux
    sudo apt install -y autojump
    sudo apt install -y supervisor

    # zsh
    sudo chsh luwenzheng -s /bin/zsh
    sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
    git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions
    git clone https://github.com/paulirish/git-open.git ~/.oh-my-zsh/plugins/git-open
    git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k
}

function suse_install() {
    # 基础软件安装
    sudo zypper install -y i3
    sudo zypper install -y ranger
    sudo zypper install -y neovim
    sudo zypper install -y neomutt
    sudo zypper install -y git
    sudo zypper install -y conky
    sudo zypper install -y fzf
    sudo zypper install -y emacs
    sudo zypper install -y alacritty
    sudo zypper install -y mpd
    sudo zypper install -y tmux
    sudo zypper install -y autojump
    sudo zypper install -y supervisor

    # zsh
    sudo chsh luwenzheng -s /bin/zsh
    sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
    git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions
    git clone https://github.com/paulirish/git-open.git ~/.oh-my-zsh/plugins/git-open
    git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k
}

function global_config() {
    sudo mkdir /usr/share/fonts/nerd-fonts
    sudo wget -P /usr/share/fonts/nerd-fonts https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete%20Mono.otf
    sudo wget -P /usr/share/fonts/nerd-fonts https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
    ln -s ~/dotfile/.config/ranger ~/.config/
    ln -sf ~/dotfile/.config/mpd ~/.config/
    ln -sf ~/dotfile/.config/alacritty ~/.config/
    ln -sf ~/dotfile/.config/neomutt ~/.config/
    ln -sf ~/dotfile/.config/nvim ~/.config/
    ln -sf ~/dotfile/.config/i3 ~/.config/
    ln -sf ~/dotfile/.config/rofi-power ~/.config/
    ln -sf ~/dotfile/.config/compton ~/.config/
    ln -sf ~/dotfile/.zsh ~/.zsh
    ln -sf ~/dotfile/.zshrc ~/.zshrc
    ln -sf ~/dotfile/.conkyi3 ~/.conkyi3
    ln -sf ~/dotfile/.conkyrc ~/.conkyrc
    ln -sf ~/dotfile/.tmux ~/.tmux
    ln -sf ~/dotfile/.tmux/.tmux.conf ~/.tmux.conf
    ln -sf ~/dotfile/.tmux/.tmux.conf.local ~/.tmux.conf.local
    sudo ln -sf ~/dotfile/etc/supervisor /etc/
    sudo ln -sf ~/dotfile/davmail ~/opt/
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

