#! /bin/bash

#X-l1bra  
clear
printLogo
printRed  =======================
echo $(redprint '==') $(cyanprint 'CELESTIA') $(redprint '==') $(yellowprint '*****') $(redprint '==')
printRed  =======================

echo $(cyanprint    'Установлена версия')
var1=`celestia-appd version`

var2=0.11.0

if [[ "1$var1" -eq "1$var2" ]]; then
echo "OK"
elif [[ "1$var1" != "1$var2" ]]; then
echo "upfate"
fi

#if [ "$var1" == "$var2" ]; then
#echo "Обновление не требуется"
#elif $var1 != $var2;



