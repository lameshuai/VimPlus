#!/bin/bash

echo "Installation will take you a little time,please be patient.^_^"
if which apt-get > /dev/null
then
    sudo apt-get install -y ctags build-essential cmake python python-dev python3-dev fontconfig git libclang llvm-4.0 clang-4.0 libclang-4.0-dev libboost-all-dev gcc g++
    var=$(sudo cat /etc/lsb-release | grep "DISTRIB_RELEASE")
    systemVersion='DISTRIB_RELEASE=17.04'
    if [ $var == $systemVersion ]
    then
        sudo apt-get install -y libncurses5-dev libgnome2-dev libgnomeui-dev \
            libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
            libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev python3-dev ruby-dev lua5.1 lua5.1-dev
        sudo apt-get remove -y vim vim-runtime gvim
        sudo apt-get remove -y vim-tiny vim-common vim-gui-common vim-nox

        sudo rm -rf ~/vim
        sudo rm -rf /usr/share/vim/vim74
        sudo rm -rf /usr/share/vim/vim80
        git clone https://github.com/vim/vim.git ~/vim
        cd ~/vim
        ./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-pythoninterp=yes \
            --with-python-config-dir=/usr/lib/python2.7/config \
            -enable-python3interp=yes \
            --with-python3-config-dir=/usr/lib/python3.5/config \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 --enable-cscope --prefix=/usr/local
        make VIMRUNTIMEDIR=/usr/local/share/vim/vim80
        sudo make install
        cd -
    else
        sudo apt-get install -y vim
    fi
elif which yum > /dev/null
then
    sudo yum install -y vim automake kernel-devel git ctags build-essential cmake python python-dev python3-dev fontconfig libclang llvm-4.0 clang-4.0 libclang-4.0-dev libboost-all-dev gcc g++
fi

sudo rm -rf ~/.vimrc
sudo rm -rf ~/.vim
sudo rm -rf ~/.ycm_extra_conf.py
cp .vimrc ~
cp Bundle.vim ~
cp BundleConfig.vim ~
cp .ycm_extra_conf.py ~

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo ""Install Bundle. > TempFile
echo "The installation will automatically quit." >> TempFile
echo "Please be patient." >> TempFile
vim TempFile -c "PluginInstall" -c "q" -c "q"
rm TempFile
echo "installation is complete." 
#cd ~/.vim/bundle/YouCompleteMe
#sudo ./install.py --clang-completer --system-libclang --system-boost
