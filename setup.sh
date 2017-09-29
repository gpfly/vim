#!/bin/bash
echo "安装将花费一定时间，请耐心等待直到安装完成^_^"
if which apt-get >/dev/null; then
  sudo apt-get install -y vim  exuberant-ctags cscope git
elif which yum >/dev/null; then
  sudo yum install -y gcc vim git ctags cscope 
fi

##Add HomeBrew support on  Mac OS
if which brew >/dev/null;then
    echo "You are using HomeBrew tool"
    brew install vim ctags git astyle
fi

#sudo easy_install -ZU autopep8 
#sudo ln -s /usr/bin/ctags /usr/local/bin/ctags
if [ -d ~/.vim ];then
  mv -f ~/.vim ~/.vim_old
fi

#cd ~/ && git clone https://github.com/gpfly/vim.git
cp -rf ../vim ~/.vim
[ -f ~/.vimrc ] && mv -f ~/.vimrc ~/.vimrc_old
mv -f ~/.vim/vimrc ~/.vimrc
#git clone https://github.com/gpfly/vundle.git ~/.vim/bundle/vundle
#git clone https://github.com/gpfly/vim-go.git ~/.vim/bundle/vim-go
#echo "gpfly正在努力为您安装bundle程序" > gpfly
#echo "安装完毕将自动退出" >> gpfly
#echo "请耐心等待" >> gpfly
#vim gpfly -c "BundleInstall" -c "q" -c "q"
#rm gpfly
echo "安装完成"
