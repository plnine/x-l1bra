#!/bin/bash

#X-l1bra  
	clear #&& source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/scripts/common.sh)
printLogo
printcelestia
echo

mainmenu() {
	echo -ne "
1) Проверить баланс
2) Показать адрес кошелька
3) Добавить кошелек wallet
4) Добавить кошелек orchestrator
5) Восстановить кошелек
6) Создать валидатора
7) Узнать информацию о валидаторе
9) Проверить синхронизацию
9) Просмотреть логи
10) Вернутся назад
$(printYellow  '0) Выйти')
$(printCyan 'Введите цифру:')  "
	read -r ans
	case $ans in
		1)
		WalletBalance
		;;
		
		2)
		ShowWallet
		;;
		
		3)
		AddWallet
		;;
		
		4)
		AddWalletOrchestrator
		;;
		5)
		RecoveryWallet
		
		;;
		
		6)
		CreateValidator
		;;
		
		7)
		InfoValidator
		;;
		
		8)
		synced
		;;
		
		9)
		logs
		;;
		
		10)
		back
		;;
		
		0)
		echo $(printBCyan '"Bye bye."')
		exit 
		;;
		
		*)
		clear
		printLogo
		printcelestia
		echo $(printRed 'Неверный запрос !')
		mainmenu
		;;
	esac
}

WalletBalance(){
clear && printLogo && printcelestia
nibid q bank balances $(nibid keys show wallet -a)
mainmenu
}

ShowWallet(){
clear && printLogo && printcelestia
nibid keys list
mainmenu
}

AddWallet(){
clear && printLogo && printcelestia
nibid keys add wallet
printRed         ============================================
echo $(printBRed '== ОБЯЗАТЕЛЬНО СОХРАНИТЕ МНЕМОНИК ФРАЗУ ==') $(printBRedBlink '!!!')
printRed         ============================================
mainmenu
}


AddWalletOrchestrator(){
clear
printLogo
printcelestia
celestia-appd keys add orchestrator
printRed         ============================================
echo $(redprint '== ОБЯЗАТЕЛЬНО СОХРАНИТЕ СИД ФРАЗУ !!!!!! ==')
printRed         ============================================
mainmenu
}



RecoveryWallet(){
clear && printLogo && printcelestia
nibid keys add wallet --recover
mainmenu
}

CreateValidator(){
clear && printLogo && printcelestia
#nibid tx staking create-validator --amount 1000000unibi --commission-max-change-rate "0.1" --commission-max-rate "0.20" --commission-rate "0.1" --min-self-delegation "1" --pubkey=$(nibid tendermint show-validator) --moniker=$MONIKER --chain-id nibiru-testnet-2 --gas-prices 0.025unibi --from wallet
nibid tx staking create-validator \
--amount=10000000unibi \
--pubkey=$(nibid tendermint show-validator) \
--moniker="$MONIKER" \
--identity=8F3C23EC3306B513 \
--chain-id=nibiru-testnet-2 \
--commission-rate=0.1 \
--commission-max-rate=0.2 \
--commission-max-change-rate=0.05 \
--min-self-delegation=1 \
--fees=2000unibi \
--from=wallet \
-y

echo
echo -ne "$(printBRed 'Вы должны позаботится забэкапить priv_validator_key.json.
Без него вы не сможете востановить валидатора.
Он находится в папке .nibid/config ') $(printBRedBlink '!!!') "
echo
mainmenu
}

InfoValidator(){
clear && printLogo && printcelestia
nibid q staking validator $(nibid keys show wallet --bech val -a)
mainmenu
}

synced(){
clear && printLogo && printcelestia
nibid status 2>&1 | jq .SyncInfo
mainmenu
}

logs(){
submenu
}

back(){
source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/nodes/nibiru/main.sh)
}

submenu(){
    echo -ne "
$(printYellow    'Для того что бы остановить журнал логов надо нажать') $(printBCyan 'CTRL+Z') $(printYellow '!!!')

Для продолжения нажмите Enter:  "
	read -r ans
	case $ans in
		*)
		sudo journalctl -u nibid -f --no-hostname -o cat
		mainmenu
		;;
	esac
}


mainmenu

