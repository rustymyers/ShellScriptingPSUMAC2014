#!/bin/bash

echo "would you like to turn automatic updates on or off?":
read ANSWER
case $ANSWER in
	"on" )
		defaults write com.microsoft.autoupdate2 HowToCheck "Automatic";;
	"off" )
		defaults write com.microsoft.autoupdate2 HowToCheck "Manual";;
	*)
		echo "enter 'on' or 'off'"
		exit;;
esac
