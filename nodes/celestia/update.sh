#! /bin/bash

#X-l1bra  
clear && source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/scripts/common.sh)
printLogo
printRed  =======================
echo $(redprint '==') $(cyanprint 'CELESTIA') $(redprint '==') $(yellowprint '*****') $(redprint '==')
printRed  =======================
echo $(cyanprint    'Установлена версия')
celestia-appd version
echo $(cyanprint    'Версия обновления')
echo 0.11.0

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