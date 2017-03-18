#!/bin/sh
if [ -d linux-source ]; then
    cd linux-source
    git pull --rebase
else
    git clone https://kernel.googlesource.com/pub/scm/linux/kernel/git/stable/linux-stable.git linux-source
fi
