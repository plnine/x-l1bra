#! /bin/bash

#X-l1bra  
clear && source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/scripts/common.sh)
clear
printLogo
printRed  =======================
echo $(redprint '==') $(cyanprint 'CELESTIA') $(redprint '==') $(yellowprint '*****') $(redprint '==')
printRed  =======================

echo $(cyanprint    'Установлена версия')
var1=`celestia-appd version`
#var1=0.11.0
var2=0.11.0

case $var1 in
	"$var2"
	 echo ok
	 ;;
	 
	 "111"
	 echo no
	 ;;
esac	

#if [[ "$var1" == "$var2" ]]; then
#echo "OK"
#else echo "upfate"
#fi



