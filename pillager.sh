#!/bin/bash


WBlack="\033[0;30m"       
Red="\033[0;31m"          
Green="\033[0;32m"        
Yellow="\033[0;33m"       
Blue="\033[0;34m"         
Purple="\033[0;35m"       
Cyan="\033[0;36m"         
White="\033[0;37m"        
BLACK="\e[00;30m"
DARY_GRAY="\e[01;30m"
RED="\e[00;31m"
BRIGHT_RED="\e[01;31m"
GREEN="\e[00;32m"
BRIGHT_GREEN="\e[01;32m"
BROWN="\e[00;33m"
YELLOW="\e[01;33m"
BLUE="\e[00;34m"
BRIGHT_BLUE="\e[01;34m"
PURPLE="\e[00;35m"
BRIGHT_CYAN="\e[01;36m"
LIGHT_GRAY="\e[00;37m"

# Bold
BBlack="\033[1;30m"       
BRed="\033[1;31m"         
BGreen="\033[1;32m"       
BYellow="\033[1;33m"      
BBlue="\033[1;34m"        
BPurple="\033[1;35m"      
BCyan="\033[1;36m"        
BWhite="\033[1;37m"       


# Underline
UBlack="\033[4;30m"       
URed="\033[4;31m"         
UGreen="\033[4;32m"       
UYellow="\033[4;33m"      
UBlue="\033[4;34m"        
UPurple="\033[4;35m"      
UCyan="\033[4;36m"        
UWhite="\033[4;37m"       


printf $BCyan"\n"

[[ -d $HOME/.pillager ]] || mkdir "$HOME/.pillager"
currentdir="$PWD"
SAVEPATH="${1-$currentdir}"
list=$HOME/.pillager/list



printf $Cyan"\n"
cat knight

printf $UYellow"\n"
echo -n "Link to pillage: "

printf $Purple"\n"

read -r LINK


printf $UBlue"\n"
echo "$LINK" >> "$list"

printf $BCyan"\n"
wget -r -np -nc -e robots=off -c --reject index.html,index.html* "${LINK}" -P "$SAVEPATH"


printf $RESET="\033[0m"  "Download All The Things\n"

echo "Finished. Yar."

cat 
