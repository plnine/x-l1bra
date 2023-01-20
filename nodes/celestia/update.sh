#! /bin/bash

#X-l1bra  
clear
printLogo
printRed  =======================
echo $(redprint '==') $(cyanprint 'CELESTIA') $(redprint '==') $(yellowprint '*****') $(redprint '==')
printRed  =======================

echo $(cyanprint    'Установлена версия')

var1=`celestia-appd version`

#read $var1
var2="0.11.0"
#echo $var1
#echo $var2

#if [ version = "$var2" ]; then
#echo "OK"
#fi
#echo $version
#echo $version
#if [ "$var1" == "$var2" ]; then
#echo "Обновление не требуется"
#elif $var1 != $var2;



