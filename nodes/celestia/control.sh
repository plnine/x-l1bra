#! /bin/bash

#X-l1bra  
clear && source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/scripts/common.sh)
printLogo
printRed  =======================
echo $(redprint '==') $(cyanprint 'CELESTIA') $(redprint '==') $(yellowprint '*****') $(redprint '==')
printRed  =======================
mainmenu() {
    echo -ne "
1) Проверить баланс
2) Добавить кошелек
3) Проверить синхронизацию
4) Просмотреть логи
5) Вернутся назад
$(yellowprint  '0) Выйти')
$(cyanprint 'Введите цифру:')  "
   read -r ans
    case $ans in
    1)
        WalletBalance
        ;;
    2)
        AddWallet
        ;;
    3)
        synced
        ;;
    4)  
    	logs
    	;;
    5)
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

WalletBalance(){
celestia-appd q bank balances $(celestia-appd keys show wallet -a)
mainmenu
}

AddWallet(){
celestia-appd keys add wallet
mainmenu
}

synced(){
curl -s localhost:26657/status | jq .result.sync_info.catching_up
mainmenu
}

logs(){
submenu
}

back(){
source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/nodes/celestia/main.sh)
}

submenu(){
    echo -ne "
$(yellowprint    'Для того что бы остановить журнал логов надо нажать') $(cyanprint 'ctrl+z !!!')

Для продолжения нажмите Enter:  "
   read -r ans
    case $ans in
   
    *)
        sudo journalctl -u celestia-appd -f --no-hostname -o cat
        mainmenu
        ;;
    esac
}


mainmenu