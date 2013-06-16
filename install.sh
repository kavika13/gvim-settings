#!/bin/sh

sourceDir=$(dirname $0)

echo Copying vim scripts
cp $sourceDir/_vimrc ~/.vimrc
cp -r $sourceDir/vimfiles ~/.vim
echo Finished copying vim scripts

echo
echo Now make sure exhuberant ctags is installed.
echo On OSX, you can install HomeBrew, then \"brew install ctags\".

echo
echo Also make sure to set up your terminal colors for the Solarized color scheme.
echo http://ethanschoonover.com/solarized \(main page\)
echo
echo Browse to osx-terminal.app-colors-solarized and double click the light scheme.
echo Then in the terminal, edit preferences, and set "Solarized Light" to default
