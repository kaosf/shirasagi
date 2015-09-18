#!/bin/bash

#
# install mecab
#

cd $HOME/local/src

echo "wget http://mecab.googlecode.com/files/mecab-0.996.tar.gz"
wget http://mecab.googlecode.com/files/mecab-0.996.tar.gz
if [ $? -ne 0 ]; then
  exit 1
fi

echo "tar xf mecab-0.996.tar.gz"
tar xf mecab-0.996.tar.gz
if [ $? -ne 0 ]; then
  exit 1
fi

cd mecab-0.996
echo "./configure --prefix=\$HOME/local --enable-utf8-only"
./configure --prefix=$HOME/local --enable-utf8-only

echo "make"
make
if [ $? -ne 0 ]; then
  exit 1
fi

echo "make install"
make install

#
# install ipadic
#

cd $HOME/local/src

echo "wget http://mecab.googlecode.com/files/mecab-ipadic-2.7.0-20070801.tar.gz"
wget http://mecab.googlecode.com/files/mecab-ipadic-2.7.0-20070801.tar.gz
if [ $? -ne 0 ]; then
  exit 2
fi

echo "tar xf mecab-ipadic-2.7.0-20070801.tar.gz"
tar xf mecab-ipadic-2.7.0-20070801.tar.gz
if [ $? -ne 0 ]; then
  exit 2
fi

cd mecab-ipadic-2.7.0-20070801
echo "./configure --prefix=\$HOME/local --with-charset=utf8"
./configure --prefix=$HOME/local --with-charset=utf8

echo "make"
make
if [ $? -ne 0 ]; then
  exit 2
fi

echo "make install"
make install

#
# install mecab-ruby
#

cd $HOME/local/src

echo "wget http://mecab.googlecode.com/files/mecab-ruby-0.996.tar.gz"
wget http://mecab.googlecode.com/files/mecab-ruby-0.996.tar.gz
if [ $? -ne 0 ]; then
  exit 3
fi

echo "tar xzf mecab-ruby-0.996.tar.gz"
tar xf mecab-ruby-0.996.tar.gz
if [ $? -ne 0 ]; then
  exit 3
fi

cd mecab-ruby-0.996

echo "ruby extconf.rb --with-cppflags=-I\$HOME/local/include"
ruby extconf.rb --with-cppflags=-I$HOME/local/include

echo "make"
make
if [ $? -ne 0 ]; then
  exit 3
fi

echo "make install"
make install
