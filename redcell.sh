#!/bin/bash

echo "  Welcome to :"
echo ""
echo "██████╗ ███████╗██████╗  ██████╗███████╗██╗     ██╗     " 
echo "██╔══██╗██╔════╝██╔══██╗██╔════╝██╔════╝██║     ██║     "
echo "██████╔╝█████╗  ██║  ██║██║     █████╗  ██║     ██║     "
echo "██╔══██╗██╔══╝  ██║  ██║██║     ██╔══╝  ██║     ██║     "
echo "██║  ██║███████╗██████╔╝╚██████╗███████╗███████╗███████╗"
echo "╚═╝  ╚═╝╚══════╝╚═════╝  ╚═════╝╚══════╝╚══════╝╚══════╝"
echo "------------------ Version 1.0 -------------------------" 
echo "________ Done By @HackBalak ----------------------------"
echo "___________________________  Thanks to @T3nb3w ---------" 
echo ""
echo ""
echo " ==> Runing the entire Infrastructure"
echo "This may take some time , just wait untill it's up"
echo ""
vagrant up
vagrant provision


echo ""
echo ""
echo " whish machine you want to ssh ? "
echo ""
echo "   1) scanVM "
echo "   2) crackVM "
echo "   3) covenantVM "
echo "   4) phishingVM "
echo "   0) exit "
echo "   5) shutdown and exit "


echo ""


while true; do

read -p "Type the Number of machine : " machine;
if [ $machine == 1 ]; then
    gnome-terminal -- bash -c "ssh-keygen -R 192.168.50.10 ; ssh omar@192.168.50.10;bash"
elif [ $machine == 2 ]; then
    gnome-terminal -- bash -c "ssh-keygen -R 192.168.50.20 ; ssh omar@192.168.50.20;bash"
elif [ $machine == 3 ]; then
    gnome-terminal -- bash -c "ssh-keygen -R 192.168.50.30 ; ssh omar@192.168.50.30;bash"
elif [ $machine == 4 ]; then
    gnome-terminal -- bash -c "ssh-keygen -R 192.168.50.40 ; ssh omar@192.168.50.40;bash"
elif [ $machine == 0 ]; then
    echo "exiting ...............................";
    echo "Have a good day :)";
    exit
elif [ $machine == 5 ]; then
    echo "Shuting down REDCELL ..................";
    echo ""
    vagrant halt ;
    echo "exiting ...............................";
    echo "Have a good day :)";
    exit
fi

done