#!/bin/bash
#mau ngapain om
#mau recode y
#recode aja gpp kok
#tapi donasi duluya
err="\e[97m[ \e[93m!\e[97m ] ";
spin () {

local pid=$!
local delay=0.25
local spinner=( '█■■■■' '■█■■■' '■■█■■' '■■■█■' '■■■■█' )

while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do

for i in "${spinner[@]}"
do
	tput civis
	echo -ne "\033[34m\r[*] Downloading..please wait.........\e[33m[\033[32m$i\033[33m]\033[0m   ";
	sleep $delay
	printf "\b\b\b\b\b\b\b\b";
done
done
printf "   \b\b\b\b\b"
tput cnorm
printf "\e[1;33m [Done]\e[0m";
echo "";

}

chmod +x .spam
echo -e "$err install package"
(apt update && apt upgrade) &> /dev/null;
(pkg install git toilet figlet nano python python2 python3 bash && gem install lolcat) &> /dev/null & spin;
echo "selesai"
slepp 1
clear

./.spam
#if check = true
#echo gas spam
