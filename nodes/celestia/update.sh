#! /bin/bash

#X-l1bra  
clear && source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/scripts/common.sh)
printLogo
printRed  =======================================================================

Ваша версия 
celestia-appd version

mainmenu() {
    echo -ne "
$(redprint    'Желаете обновить ?')
$(redprint   '1)') Да
$(greenprint '2)') Нет
Введите цифру:  "
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
        source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/scripts/logo.sh)
        printRed  =======================================================================
        echo $(redprint 'Неверный запрс !')
        mainmenu
        ;;
    esac
}

yes(){
mainmenu
}

no(){
        source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/nodes/celestia/main.sh)
}

mainmenu