#! /bin/bash

#X-l1bra  
clear && source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/scripts/common.sh)
printLogo
printRed  =======================================================================

mainmenu() {
    echo -ne "
$(cyanprint    'Выберите ноду !')
$(blueprint    '1)') Celestia
$(redprint     '0)') Exit
Введите цифру:  "
    read -r ans
    case $ans in
    1)
        celestia
        ;;
    0)
        echo $(cyanprint '"Bye bye."')
        exit
        ;;
    *)
        printLogo
        printRed  ======================================================================= 
        mainmenu
        ;;
    esac
}

celestia(){
source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/nodes/celestia/main.sh)
}


mainmenu