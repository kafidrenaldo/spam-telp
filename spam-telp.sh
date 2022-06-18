#!bin/sh
#mau ngapain om
#mau recode y
#recode aja gpp kok
#tapi donasi duluya

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


echo "$green install package"
(apt update && apt upgrade) &> /dev/null & spin;
(pkg install git toilet figlet nano python python2 python3 bash && gem install lolcat) &> /dev/null;
sleep 1
echo "selesai"
clear

kosong="\033[0m";
green="\033[32m";
yellow="\033[33m";
blue="\033[34m";
cyan="\033[36m";
red="\033[31m";
bold="\033[1m";
gray="\033[37m";
ask="\e[97m[ \e[91m?\e[97m ] ";
err="\e[97m[ \e[93m!\e[97m ] ";
suk="\e[97m[ \e[92m+\e[97m ] ";

echo -e "$green•$yellow============================================$green•"
echo -e " $blue Author	   :$cyan Kafid_Renaldo          	";
echo -e " $blue github	   :$cyan github.com/kafidrenaldo	";
echo -e "$green•$yellow============================================$green•	";
echo -e "$err $red info					";
echo -e "$redbg $cyan batas spam : 03"
echo -e "   tidak bisa pake 08/+62"
echo -e "   Example:885876xxxxx$kosong"
echo
toilet -f small -F gay 		Spam Telpone
echo 
echo -e "$green [ $lblue 01 $green ] $grey spam-telp"
echo -e "$green [ $lblue 02 $green ] $grey Exit tools$kosong"

echo
read -p "masukan pilihan anda : " pil
if [ $pil = 1 ] || [ $pil = 01 ]; then
read -p "masukan no target : " nomor
link="https://id.jagreward.com/member/verify-mobile/$nomor"
echo -e "$suk Spam Telepon Akan Segera Dikirim Mohon Tunggu"
echo -e "$suk untuk menghetikan spam tekan "ctrl + c / ctrl + z" "
echo -e "$yellow•$green=============================================$yellow•$kosong"
curl -s $link "\n" 
echo -e "$yellow•$green=============================================$yellow•$kosong"

if [ $pil = 2 ] || [ $pil = 02 ]; then
echo 'terima kasih udah pake tools gue'
exit
fi
else
    echo -e "$err $bold Input Salah..$red!!!"
    sh spam-telp.sh
    fi
