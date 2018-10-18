#!/bin/sh

defaults write com.apple.finder CreateDesktop -bool true
killall -SIGHUP Finder
