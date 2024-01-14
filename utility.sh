#!/bin/bash
clear
RED='\033[0;31m'
NC='\e[0m'
gray="\e[1;30m"
Blue="\033[1;36m"
GREEN='\033[0;32m'

BGX="\033[42m"
UPDATE="https://raw.githubusercontent.com/rizaddin/xraylite/main/"
#BOT="https://raw.githubusercontent.com/myridwan/src/ipuk/"
UDPCORE="https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2"
clear
echo -e " \033[34m══════════════════════════════════════════════════════════════════════════${NC}"
echo -e "                \033[34m│$NC\033[41m                Menu System                $NC\033[34m│$NC"
echo -e " \033[34m══════════════════════════════════════════════════════════════════════════${NC}"
#echo -e " \033[34m══════════════════════════════════════════════════════════${NC}"
echo -e "  ${Blue}[01] ${NC}${GREEN}CEK SERVICE${NC}        ${Blue}[11] ${NC}${GREEN}CEK TRAFIK ${NC}"     
echo -e "  ${Blue}[02] ${NC}${GREEN}INSTALL UDP ${NC}       ${Blue}[12] ${NC}${GREEN}CEK BANDWIDTH ${NC}"
echo -e "  ${Blue}[03] ${NC}${GREEN}UPDATE SC ${NC}         ${Blue}[13] ${NC}${GREEN}LIMIT SPEED ${NC}"
echo -e "  ${Blue}[04] ${NC}${GREEN}RESTART SERVICE${NC}    ${Blue}[14] ${NC}${GREEN}INSTALL WEBMIN ${NC}"
echo -e "  ${Blue}[05] ${NC}${GREEN}CHANGE BANNER${NC}      ${Blue}[15] ${NC}${GREEN}AUTO REBOOT ${NC}"
echo -e "  ${Blue}[06] ${NC}${GREEN}CHANGE DOMAIN${NC}      ${Blue}[16] ${NC}${GREEN}SCRIPT INFO ${NC}"
echo -e "  ${Blue}[07] ${NC}${GREEN}FIX POINTING${NC}       ${Blue}[17] ${NC}${GREEN}ADD BOT NOTIF ${NC}"
echo -e "  ${Blue}[08] ${NC}${GREEN}CLEAR LOGS${NC}         ${Blue}[18] ${NC}${GREEN}ADD BOT PANEL (MT) ${NC}"
echo -e "  ${Blue}[09] ${NC}${GREEN}REBOOT VPS${NC}         ${Blue}[19] ${NC}${GREEN}REGIST IP VPS ${NC}"
echo -e "  ${Blue}[10] ${NC}${GREEN}GEN-SSL / CERTV${NC}"
echo -e " \033[36m══════════════════════════════════════════════════════════════════════════${NC}"
echo -e ""
echo -e "  ${Blue}[0] ${NC} ${GREEN}Back To Menu${NC}"
echo -e ""
read -p "  Select From Options [0 back to menu ] : " menu
case $menu in
1) clear ;
    running
    ;;
2) clear ;
    wget --load-cookies /tmp/cookies.txt ${UDPCORE} -O install-udp && rm -rf /tmp/cookies.txt && chmod +x install-udp && ./install-udp
    ;;
3) clear ;
    update
    ;;    
4) clear ;   
    restarts
    ;;
5) clear ;    
    nano /etc/issue.net
    ;;
6) clear ;   
    addhost
    ;;
7) clear ; 
    fixcert
    ;;
8) clear ;
    clearlog
   ;;
9) clear ;
   reboot
   ;;
10) clear ;
   genssl
   ;;
11) clear ;
   cek-trafik
   ;;
12) clear ;
   cek-bandwidth
    ;;
13) clear ;
   limit-speed
   ;;
14) clear ;
   wbm
   ;;
15) clear ;
   autoreboot
   ;;
16) clear ;
   cat /root/log-install.txt
   ;;  
17) clear ;
   add-bot-notif
   ;;  
18) clear ;
   add-bot-panel
   ;;  
19) clear ;
   add-ip
   ;;  
0) clear ;
   menu
   ;;
*) clear ;
    utility
    ;;
esac
