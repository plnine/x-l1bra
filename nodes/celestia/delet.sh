#! /bin/bash
clear && source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/scripts/common.sh)
printLogo
printRed  ======================================================================= 

mainmenu() {
    echo -ne "
$(redprint    'Вы действительно хотите удалить Celestia !!!!')
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
no(){
source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/nodes/celestia/main.sh)
}

yes(){
clear
printLogo
printRed  ======================================================================= 
echo $(yellowprint 'Идет удаление.....!')
systemctl stop celestia-appd.service && systemctl disable celestia-appd.service && rm -rf .celestia-app && rm -rf celestia-app
echo $(greenprint 'Готово !')
submenu
}

submenu(){
    echo -ne "
$(redprint    'Удаление завершено.')
Нажмите Enter:  "
   read -r ans
    case $ans in
        *)
        source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/nodes/celestia/main.sh)
        ;;
    esac
}


mainmenu
