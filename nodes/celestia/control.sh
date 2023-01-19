#! /bin/bash

#X-l1bra  
clear 
printLogo
printRed  =======================
echo $(redprint '==') $(cyanprint 'CELESTIA') $(redprint '==') $(yellowprint '*****') $(redprint '==')
printRed  =======================
mainmenu() {
    echo -ne "
1) Проверить баланс
2) Добавить кошелек wallet
3) Добавить кошелек orchestrator
4) Проверить синхронизацию
5) Просмотреть логи
6) Вернутся назад
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
        AddWalletOrchestrator
        ;;
    4)
        synced
        ;;
    5)  
    	logs
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
	printLogo
	printRed  =======================
	echo $(redprint '==') $(cyanprint 'CELESTIA') $(redprint '==') $(yellowprint '*****') $(redprint '==')
	printRed  =======================
	echo $(redprint 'Неверный запрос !')
        mainmenu
        ;;
    esac
}

WalletBalance(){
celestia-appd q bank balances $(celestia-appd keys show wallet -a)
mainmenu
}

AddWallet(){
clear
printLogo
printRed  =======================
echo $(redprint '==') $(cyanprint 'CELESTIA') $(redprint '==') $(yellowprint '*****') $(redprint '==')
printRed  =======================
celestia-appd keys add wallet
printRed         ============================================
echo $(redprint '== ОБЯЗАТЕЛЬНО СОХРАНИТЕ СИД ФРАЗУ !!!!!! ==')
printRed         ============================================
mainmenu
}

AddWalletOrchestrator(){
clear
printLogo
printRed  =======================
echo $(redprint '==') $(cyanprint 'CELESTIA') $(redprint '==') $(yellowprint '*****') $(redprint '==')
printRed  =======================
celestia-appd keys add orchestrator
mainmenu
}

synced(){
clear
printLogo
printRed  =======================
echo $(redprint '==') $(cyanprint 'CELESTIA') $(redprint '==') $(yellowprint '*****') $(redprint '==')
printRed  =======================
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
$(yellowprint    'Для того что бы остановить журнал логов надо нажать') $(cyanprint 'CTRL+Z') $(yellowprint '!!!')

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