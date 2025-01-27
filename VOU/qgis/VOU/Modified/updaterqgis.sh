#!/bin/bash
  if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
  qgisu="/etc/init.d/qgisconfigupdater.sh"
  STARTDIR="$(pwd)"
if [ -f "$qgisu" ]; then
	sudo rm -rf updaterfiles/
	sudo mkdir updaterfiles/
	cd updaterfiles/
	sudo curl -LOs https://raw.githubusercontent.com/onthelink-nl/scripts/master/VOU/qgis/VOU/Modified/qgisconfigupdater.sh
	sudo cp -f qgisconfigupdater.sh /etc/init.d/qgisconfigupdater.sh
	sudo chmod +x /etc/init.d/qgisconfigupdater.sh
	sudo rm -rf "qgisconfigupdater.sh"
	cd $STARTDIR
	sudo rm -rf updaterfiles/
else
	sudo rm -rf updaterfiles/
	sudo mkdir updaterfiles/
	cd updaterfiles/
	sudo curl -LOs https://raw.githubusercontent.com/onthelink-nl/scripts/master/VOU/qgis/VOU/Modified/qgisconfigupdater.sh
	sudo cp -f qgisconfigupdater.sh /etc/init.d/qgisconfigupdater.sh
	sudo chmod +x /etc/init.d/qgisconfigupdater.sh
	sudo rm -rf "qgisconfigupdater.sh"
	cd $STARTDIR
	sudo rm -rf updaterfiles/
fi
bash /etc/init.d/qgisconfigupdater.sh
else
bash /etc/init.d/updaterqgis.sh
exit
fi

exit
