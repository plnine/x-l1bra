#!/bin/bash

#X-l1bra  
	clear #&& source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/scripts/common.sh)
printLogo
printnibiru
echo
echo $(printYellow    'Для надо надо нажать') $(printBCyan 'CTRL+Z') $(printYellow '!!!')
read -r -p "Введите адрес кошелька:" SENDWALLET
read -r -p "Введите  сумму:" SUMNIBI

nibid tx bank send wallet "$SENDWALLET" "$SUMNIBI"unibi --from wallet --chain-id nibiru-testnet-2 --gas-prices 0.1unibi --gas-adjustment 1.5 --gas auto -y 

mainmenu(){
echo -ne "
$(printBGreen    'Отправить' ) "$SUMNIBI"unibi на "$SENDWALLET" $(printBGreenBlink '!!!')
 		1) Да
 		2) Нет
 		3) В меню
$(printBCyan 'Нажмите Enter:')  "
	read -r ans
	case $ans in
		1)
		subsubmenu
		;;
		2)
		nibid status 2>&1 | jq .SyncInfo
		submenu
		;;
		3)
		source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/nodes/nibiru/main.sh)
		;;
		*)
		source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/scripts/logo.sh)
		printRed  =======================================================================
		echo $(printBRed 'Неверный запрс !!!')
		submenu
		;;
	esac
}