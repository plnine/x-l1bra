#! /bin/bash

#X-l1bra  
clear && source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/scripts/common.sh)
printLogo
printRed  =======================================================================

mainmenu() {
    echo -ne "
$(yellowprint 'CELESTIA')
$(greenprint   '1)') Установить
$(cyanprint    '2)') Управление
$(yellowprint  '3)') Обновить
$(redprint     '4)') Удалить
$(blueprint    '5)') Вернутся назад
$(redprint     '0)') Выйти
Введите цифру:  "
   read -r ans
    case $ans in
    1)
        install
        ;;
    2)
        control
        ;;
    3)
        update
        ;;
    4)  
    	delet
    	;;
    5)
        info
        ;;
    6)
        back
        ;;
    0)
        echo $(cyanprint '"Bye bye."')
        exit 
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

install(){
source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/nodes/celestia/install.sh)
}

control(){
source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/nodes/celestia/control.sh)
}

update(){
source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/nodes/celestia/update.sh)
}

delet(){
source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/nodes/celestia/delet.sh)
}

back(){
source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/scripts/x-l1bra.sh)
}

mainmenu