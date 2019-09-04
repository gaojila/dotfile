#!/bin/bash

#================================================================
#   Copyright (C) 2019 Sangfor Ltd. All rights reserved.
#
#   文件名称：deepin_screenshot
#   创 建 者：luwenzheng
#   邮    箱：redgaojila@gmail.com
#   创建日期：2019年06月18日
#   描    述：
#
#================================================================

name=$(date +%Y%m%d%H%M%S)
screenshot=/usr/bin/deepin-screenshot
xclip=/usr/bin/xclip

$screenshot -s ~/图片/ScreenShortcut/$name.png
$xclip -selection clipoard -t "image/png" ~/图片/ScreenShortcut/$name.png
