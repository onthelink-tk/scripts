#!/bin/bash

tput reset
selection=
until [ "$selection" = "4" ]; do
tput bold && tput setaf 46; echo "
OnTheLink QGIS-MENU
"
tput sgr0 && tput setaf 45; echo "
1 - Installeer/herinstalleer/update QGIS
2 - Verwijder QGIS en zet alles terug naar standaardwaardes
3 - Sluit dit menu en installeer het automatisch verwijderen van bestanden script (Voor scholen en voor chromebooks met één account met meerdere personen, DIT VERWIJDERD ALLES IN DE HOOFDMAP!!!)
4 - Sluit dit menu
5 - Installeer de terminal beveiligings software (vervangt de .bashrc in de hoofdmap, voor verwijderen handmatig de lijnen na de laatste fi weghalen...)
"
    tput setaf 6; echo -n "Voer uw keuze in: "
    read -r selection
    echo ""
case $selection in
    1 ) 
		sudo rm -rf /home/$USER/OnTheLink_QGIS-VERSIONSELECTOR_NL.sh
		tput setaf 5; echo "Het QGIS-VERSIE_KEUZEMENU voorbereiden..."
        sudo curl -LO https://raw.githubusercontent.com/onthelink-tk/scripts/master/qgis/OnTheLink_QGIS-VERSIONSELECTOR_NL.sh
        sleep 2 ; bash OnTheLink_QGIS-VERSIONSELECTOR_NL.sh
        ;;
	2 ) 
		tput reset
		tput setaf 1; echo "Verwijderen van QGIS gestart..."
		sudo flatpak uninstall org.qgis.qgis
		sudo apt-get --yes --assume-yes remove flatpak
		crontab -r
		sudo su
		sudo curl -LOs https://raw.githubusercontent.com/onthelink-tk/scripts/master/qgis/MUFU/profile
		sudo cp -f profile /etc/profile
		chattr -i /run/user/1000/doc/by-app/org.qgis.qgis/
		chattr -i /home/$USER/org.qgis.qgis/
		sudo mv "/run/user/1000/doc/by-app/org.qgis.qgis/*" /tmp
		sudo mv "/home/$USER/org.qgis.qgis/*" /tmp
		sudo mv "/home/$USER/org.qgis.qgis" /tmp
		tput reset
		;;
	3 ) 
		sudo curl -LOs https://raw.githubusercontent.com/onthelink-tk/scripts/master/qgis/MUFU/profile
		sudo cp -f profile /etc/profile
		sudo curl -LOs https://raw.githubusercontent.com/onthelink-tk/scripts/master/qgis/MUFU/Modified/profile
		sudo cp -f profile /etc/profile
		sudo rm -rf "/home/$USER/qgis"
		sudo rm -rf "/home/$USER/QgisStartNL.sh"
		sudo rm -rf "/home/$USER/OnTheLink_QGIS-MENU_NL.sh"
		sudo rm -rf "/home/$USER/QgisStartEN.sh"
		sudo rm -rf "/home/$USER/OnTheLink_QGIS-MENU_EN.sh"
		sudo rm -rf "/home/$USER/OnTheLink_QGIS-VERSIONSELECTOR_EN.sh"
		sudo rm -rf "/home/$USER/OnTheLink_QGIS-VERSIONSELECTOR_NL.sh"
		sudo rm -rf "/home/$USER/profile"
		crontab -r
		crontab -l | { cat; echo "*/1 * * * * rsync -a /run/user/1000/doc/by-app/org.qgis.qgis /home/$USER"; } | crontab - 
		tput reset
		exit
		;;
    4 ) 
        sudo rm -rf "/home/$USER/qgis"
		sudo rm -rf "/home/$USER/QgisStartNL.sh"
		sudo rm -rf "/home/$USER/OnTheLink_QGIS-MENU_NL.sh"
		sudo rm -rf "/home/$USER/QgisStartEN.sh"
		sudo rm -rf "/home/$USER/OnTheLink_QGIS-MENU_EN.sh"
		sudo rm -rf "/home/$USER/OnTheLink_QGIS-VERSIONSELECTOR_EN.sh"
		sudo rm -rf "/home/$USER/OnTheLink_QGIS-VERSIONSELECTOR_NL.sh"
		sudo rm -rf "/home/$USER/profile"
		crontab -r
		crontab -l | { cat; echo "*/1 * * * * rsync -a /run/user/1000/doc/by-app/org.qgis.qgis /home/$USER"; } | crontab - 
		tput reset
		exit
        ;;
    5 ) 
		sudo curl -LOs https://raw.githubusercontent.com/onthelink-tk/scripts/master/qgis/MUFU/Modified/.bashrc > /home/$USER/.bashrc
		tput setaf 2; echo "De terminal beveiligings software is geïnstalleerd!"
		sleep 2
		tput reset
		;;
	* ) 
        tput setaf 202; echo "Voer alstublieft alleen de keuzes 1, 2, 3, 4 of 5 in..."
        sleep 1 ; tput reset
esac
done
