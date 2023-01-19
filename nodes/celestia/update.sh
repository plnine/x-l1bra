#! /bin/bash

#X-l1bra  
clear
printLogo
printRed  =======================
echo $(redprint '==') $(cyanprint 'CELESTIA') $(redprint '==') $(yellowprint '*****') $(redprint '==')
printRed  =======================

echo $(cyanprint    'Установлена версия')
var1=celestia-appd version
echo $(cyanprint    'Версия обновления')
#echo 0.11.0
var2="0.11.0"


if [$var1 == $var2]; then
echo "Установлена все как надо"
else ma
fi

mainmenu() {
    echo -ne "
$(redprint    'Желаете обновить ?')
$(greenprint   '1) Да')
$(redprint     '2) Нет')
$(cyanprint 'Введите цифру:') "
   read -r ans
    case $ans in
    1)
        yes
        ;;
    2)
        no
        ;;
   
    *)
        clear
	printLogo
	printRed  =======================
	echo $(redprint '==') $(cyanprint 'CELESTIA') $(redprint '==') $(yellowprint '*****') $(redprint '==')
	printRed  =======================
	echo $(redprint 'Неверный запрос !')
        ;;
    esac
}

yes(){
clear
printLogo
printRed  =======================================================================
mainmenu
}

no(){
        source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/nodes/celestia/main.sh)
}

mainmenu