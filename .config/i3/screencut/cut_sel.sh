#!/bin/bash

#================================================================
#   Copyright (C) 2019 Sangfor Ltd. All rights reserved.
#   
#   文件名称：cut_sel.sh
#   创 建 者：luwenzheng
#   邮    箱：redgaojila@gmail.com
#   创建日期：2019年06月18日
#   描    述：
#
#================================================================
scrot -s -b -m -e 'xclip -selection clipoard -t "image/png" $f && mv $f ~/图片/ScreenShortcut/%Y-%m-%d-%H-%M-%S.png'
