#!/bin/sh

sourceDir=$(dirname $0)

echo Copying vim scripts
cp $sourceDir/_vimrc ~/.vimrc
cp -r $sourceDir/vimfiles ~/.vim
echo Finished copying vim scripts

echo
echo Now make sure exhuberant ctags is installed.
echo On OSX, you can install HomeBrew, then \"brew install ctags\"
