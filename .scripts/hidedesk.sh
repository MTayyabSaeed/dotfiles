#!/bin/sh

defaults write com.apple.finder CreateDesktop -bool false
killall -SIGHUP Finder
