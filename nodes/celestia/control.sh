#! /bin/bash

#X-l1bra  
clear && source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/scripts/common.sh)
printLogo
printRed  =======================================================================


mainmenu() {
    echo -ne "
$(yellowprint 'CELESTIA')
$(greenprint   '1)') Проверить баланс
$(cyanprint    '2)') Добавить кошелек
$(yellowprint  '3)') Проверить синхронизацию
$(redprint     '4)') Просмотреть логи
$(blueprint    '5)') Вернутся назад
$(redprint     '0)') Выйти
Введите цифру:  "
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
sudo journalctl -u celestia-appd -f --no-hostname -o cat
mainmenu
}

back(){
source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/nodes/celestia/main.sh)
}

mainmenu