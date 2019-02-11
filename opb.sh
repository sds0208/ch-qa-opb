#!/bin/bash

echo
echo This script will open a url in Chrome Incognito, Firefox Private Browsing, and Safari Private Browsing. 
echo
echo Note- You must set Safari Preferences to open in a private window first. Running this script will terminate your current Firefox window. 
echo
echo Press ctrl+c at any time to exit.
echo

read -p "What url do you want to open? " url
echo

osascript -e 'quit app "Firefox"'
sleep 1s
open -na "Google Chrome" --args --new-window --incognito $url
open -a Firefox --args -private-window $url
open -a Safari $url


