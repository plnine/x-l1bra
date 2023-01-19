#! /bin/bash

#X-l1bra  
clear
printLogo
printRed  =======================
echo $(redprint '==') $(cyanprint 'CELESTIA') $(redprint '==') $(yellowprint '*****') $(redprint '==')
printRed  =======================

echo $(cyanprint    'Установлена версия')
celestia-appd version
read $var1

$var2=0.11.0
echo $var1
echo $var2
if [ "$var1" == "$var2" ]; then
echo "Обновление не требуется"
elif $var1 != $var2;



