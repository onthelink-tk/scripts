#!/bin/bash

tput reset
selection=
until [ "$selection" = "5" ]; do
tput bold && tput setaf 46; echo "
OnTheLink QGIS-MENU
"
tput sgr0 && tput setaf 45; echo "
==================================
>>>>>>>ALLEENSTAANDE OPTIES<<<<<<<
==================================
"
tput sgr0 && tput setaf 202; echo "
1 - Installeer/herinstalleer/update QGIS
2 - Verwijder QGIS en zet alles terug naar standaardwaardes
3 - Sluit dit menu en installeer het automatisch verwijderen van bestanden script
4 - Sluit dit menu (KIES DEZE ALLEEN NA DE INSTALLATIE)
5 - Sluit dit menu normaal (KIES DEZE ALLEEN ALS U NIETS HEEFT GEÏNSTALLEERD)
6 - Installeer de terminal beveiligings software
"
tput sgr0 && tput setaf 45; echo "
==================================
>>>>>>>GECOMBINEERDE OPTIES<<<<<<<
==================================
"
tput sgr0 && tput setaf 202; echo "
a - Installeer/herinstalleer/update QGIS LATEST + Verlaat het script (1+4)
b - Installeer/herinstalleer/update QGIS LATEST + Verlaat het script en installeer het automatisch bestanden verwijderen script (1+3)
c - Installeer/herinstalleer/update QGIS LATEST + De terminal beveiligings software + Verlaat het script en installeer het automatisch verwijderen van bestanden script (VOOR SCHOLEN) (1+5+3)
"
    tput setaf 6; echo -n "Voer uw keuze in: "
    read -r selection
    echo ""
case $selection in
    1 ) 
		sudo rm -rf OnTheLink_QGIS-VERSIONSELECTOR_NL.sh
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
		sudo rm -rf /etc/init.d/qgiscopyfiles.sh
		sudo rm -rf /etc/init.d/qgisremovefiles.sh
		chattr -i /run/user/1000/doc/by-app/org.qgis.qgis/
		chattr -i /home/$USER/org.qgis.qgis/
		sudo mv "/run/user/1000/doc/by-app/org.qgis.qgis/*" /tmp
		sudo mv "/home/$USER/org.qgis.qgis/*" /tmp
		sudo mv "/home/$USER/org.qgis.qgis" /tmp
		tput reset
		exit
		;;
	3 ) 
		sudo rm -rf "qgis/"
		sudo rm -rf "QgisStartNL.sh"
		sudo rm -rf "OnTheLink_QGIS-MENU_NL.sh"
		sudo rm -rf "QgisStartEN.sh"
		sudo rm -rf "OnTheLink_QGIS-MENU_EN.sh"
		sudo rm -rf "OnTheLink_QGIS-VERSIONSELECTOR_EN.sh"
		sudo rm -rf "OnTheLink_QGIS-VERSIONSELECTOR_NL.sh"
		sudo curl -LOs https://raw.githubusercontent.com/onthelink-tk/scripts/master/qgis/MUFU/Modified/qgiscopyfiles.sh
		sudo cp -f qgiscopyfiles.sh /etc/init.d/qgiscopyfiles.sh
		sudo curl -LOs https://raw.githubusercontent.com/onthelink-tk/scripts/master/qgis/MUFU/Modified/qgisremovefiles.sh
		sudo cp -f qgisremovefiles.sh /etc/init.d/qgisremovefiles.sh
		sudo chmod +x /etc/init.d/qgiscopyfiles.sh
		sudo chmod +x /etc/init.d/qgisremovefiles.sh
		sudo rm -rf "qgiscopyfiles.sh"
		sudo rm -rf "qgisremovefiles.sh"
		crontab -r
		crontab -l | { cat; echo "* * * * * /bin/bash /etc/init.d/qgiscopyfiles.sh"; } | crontab - 
		crontab -l | { cat; echo "@reboot /bin/bash /etc/init.d/qgisremovefiles.sh"; } | crontab - 
		tput reset
		exit
		;;
	4 ) 
		sudo rm -rf "qgis/"
		sudo rm -rf "QgisStartNL.sh"
		sudo rm -rf "OnTheLink_QGIS-MENU_NL.sh"
		sudo rm -rf "QgisStartEN.sh"
		sudo rm -rf "OnTheLink_QGIS-MENU_EN.sh"
		sudo rm -rf "OnTheLink_QGIS-VERSIONSELECTOR_EN.sh"
		sudo rm -rf "OnTheLink_QGIS-VERSIONSELECTOR_NL.sh"
		sudo curl -LOs https://raw.githubusercontent.com/onthelink-tk/scripts/master/qgis/MUFU/Modified/qgiscopyfiles.sh
		sudo cp -f qgiscopyfiles.sh /etc/init.d/qgiscopyfiles.sh
		sudo chmod +x /etc/init.d/qgiscopyfiles.sh
		sudo rm -rf "qgiscopyfiles.sh"
		crontab -r
		crontab -l | { cat; echo "* * * * * /bin/bash /etc/init.d/qgiscopyfiles.sh"; } | crontab - 
		tput reset
		exit
		;;
    5 ) 
        	sudo rm -rf "qgis/"
		sudo rm -rf "QgisStartNL.sh"
		sudo rm -rf "OnTheLink_QGIS-MENU_NL.sh"
		sudo rm -rf "QgisStartEN.sh"
		sudo rm -rf "OnTheLink_QGIS-MENU_EN.sh"
		sudo rm -rf "OnTheLink_QGIS-VERSIONSELECTOR_EN.sh"
		sudo rm -rf "OnTheLink_QGIS-VERSIONSELECTOR_NL.sh"
		tput reset
		exit
		;;
    6 ) 
		sudo curl -LOs https://raw.githubusercontent.com/onthelink-tk/scripts/master/qgis/MUFU/Modified/.bashrc > /home/$USER/.bashrc
		tput setaf 2; echo "De terminal beveiligings software is geïnstalleerd!"
		sleep 2
		tput reset
		;;
	a ) 
		sudo rm -rf QgisStartNL.sh
		tput setaf 5; echo "Uw combinatie voorbereiden..."
		sudo curl -LO https://raw.githubusercontent.com/onthelink-tk/scripts/master/qgis/MUFU/Startup/QgisStartNL.sh
		sleep 2 ; sudo bash QgisStartNL.sh
		tput reset
		exit
		;;
	b ) 
		sudo rm -rf QgisStartNL.sh
		tput setaf 5; echo "Uw combinatie voorbereiden..."
		sudo curl -LO https://raw.githubusercontent.com/onthelink-tk/scripts/master/qgis/MUFU/Startup/QgisStartNL.sh
		sleep 2 ; sudo bash QgisStartNL.sh
		sudo rm -rf "qgis/"
		sudo rm -rf "QgisStartNL.sh"
		sudo rm -rf "OnTheLink_QGIS-MENU_NL.sh"
		sudo rm -rf "QgisStartEN.sh"
		sudo rm -rf "OnTheLink_QGIS-MENU_EN.sh"
		sudo rm -rf "OnTheLink_QGIS-VERSIONSELECTOR_EN.sh"
		sudo rm -rf "OnTheLink_QGIS-VERSIONSELECTOR_NL.sh"
		sudo curl -LOs https://raw.githubusercontent.com/onthelink-tk/scripts/master/qgis/MUFU/Modified/qgiscopyfiles.sh
		sudo cp -f qgiscopyfiles.sh /etc/init.d/qgiscopyfiles.sh
		sudo curl -LOs https://raw.githubusercontent.com/onthelink-tk/scripts/master/qgis/MUFU/Modified/qgisremovefiles.sh
		sudo cp -f qgisremovefiles.sh /etc/init.d/qgisremovefiles.sh
		sudo chmod +x /etc/init.d/qgiscopyfiles.sh
		sudo chmod +x /etc/init.d/qgisremovefiles.sh
		sudo rm -rf "qgiscopyfiles.sh"
		sudo rm -rf "qgisremovefiles.sh"
		crontab -r
		crontab -l | { cat; echo "* * * * * /bin/bash /etc/init.d/qgiscopyfiles.sh"; } | crontab - 
		crontab -l | { cat; echo "@reboot /bin/bash /etc/init.d/qgisremovefiles.sh"; } | crontab - 
		tput reset
		exit
		;;
	c ) 
		sudo rm -rf QgisStartEN.sh
		tput setaf 5; echo "Uw combinatie voorbereiden..."
		sudo curl -LO https://raw.githubusercontent.com/onthelink-tk/scripts/master/qgis/MUFU/Startup/QgisStartNL.sh
		sleep 2 ; sudo bash QgisStartNL.sh
		sudo curl -LOs https://raw.githubusercontent.com/onthelink-tk/scripts/master/qgis/MUFU/Modified/.bashrc > /home/$USER/.bashrc
		tput setaf 2; echo "De terminal beveiligings software is geïnstalleerd!"
		sleep 2
		sudo rm -rf "qgis/"
		sudo rm -rf "QgisStartNL.sh"
		sudo rm -rf "OnTheLink_QGIS-MENU_NL.sh"
		sudo rm -rf "QgisStartEN.sh"
		sudo rm -rf "OnTheLink_QGIS-MENU_EN.sh"
		sudo rm -rf "OnTheLink_QGIS-VERSIONSELECTOR_EN.sh"
		sudo rm -rf "OnTheLink_QGIS-VERSIONSELECTOR_NL.sh"
		sudo curl -LOs https://raw.githubusercontent.com/onthelink-tk/scripts/master/qgis/MUFU/Modified/qgiscopyfiles.sh
		sudo cp -f qgiscopyfiles.sh /etc/init.d/qgiscopyfiles.sh
		sudo curl -LOs https://raw.githubusercontent.com/onthelink-tk/scripts/master/qgis/MUFU/Modified/qgisremovefiles.sh
		sudo cp -f qgisremovefiles.sh /etc/init.d/qgisremovefiles.sh
		sudo chmod +x /etc/init.d/qgiscopyfiles.sh
		sudo chmod +x /etc/init.d/qgisremovefiles.sh
		sudo rm -rf "qgiscopyfiles.sh"
		sudo rm -rf "qgisremovefiles.sh"
		crontab -r
		crontab -l | { cat; echo "* * * * * /bin/bash /etc/init.d/qgiscopyfiles.sh"; } | crontab - 
		crontab -l | { cat; echo "@reboot /bin/bash /etc/init.d/qgisremovefiles.sh"; } | crontab - 
		tput reset
		exit
		;;
	* ) 
        tput setaf 202; echo "Voer alstublieft alleen de alleenstaande keuzes 1, 2, 3, 4, 5, 6 of de gecombineerde keuzes a,b of c in..."
		sleep 1 ; tput reset
esac
done
