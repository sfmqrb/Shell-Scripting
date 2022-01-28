#!/bin/bash

# Author: sfmqrb
# Date: 29/01/2022
# Tested on Navicat 16.x on Linux
# Inspired by: https://github.com/nakamuraos

PURPLE='\033[0;35m'
GREEN='\033[0;32m'
RED="\e[1;31m"
ENDCOLOR="\e[0m"

echo "Reset trial & clear all data settings."

echo "Cleaning..."
echo "${GREEN}"
echo "=================================="
echo "|          user backup           |"
echo "=================================="
cp  ~/.config/dconf/user ~/.config/dconf/user.bak
rm -rf ~/.config/dconf/user
echo "${ENDCOLOR}"

echo "${RED}"
echo "=================================="
echo "|        !!! WARNING !!!         |"
echo "=================================="
echo "|       running application      |"
echo "|      DO NOT CLOSE TERMINAL     |"
echo "=================================="
echo "${ENDCOLOR}"

chmod +x ~/navicat16-pgsql-en.AppImage
~/navicat16-pgsql-en.AppImage
cp  ~/.config/dconf/user.bak ~/.config/dconf/user
rm -rf ~/.config/dconf/user.bak
echo "${PURPLE}"
echo "Done."
echo "${ENDCOLOR}"

