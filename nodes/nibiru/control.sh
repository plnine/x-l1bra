#!/bin/bash

#X-l1bra  
	clear && source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/scripts/common.sh)
printLogo
printnibiru
echo

# mainmenu() {
# 	echo -ne "
# 	1) Проверить баланс
# 	2) Показать адрес кошелька
# 	3) Добавить кошелек wallet
# 	4) Восстановить кошелек
# 	5) Создать валидатора
# 	6) Узнать информацию о валидаторе
# 	7) Проверить синхронизацию
# 	8) Просмотреть логи
# 	9) Вернутся назад
# $(yellowprint  '0) Выйти')
# $(cyanprint 'Введите цифру:')  "
# 	read -r ans
# 	case $ans in
# 		1)
# 		WalletBalance
# 		;;
		
# 		2)
# 		ShowWallet
# 		;;
		
# 		3)
# 		AddWallet
# 		;;
		
# 		4)
# 		RecoveryWallet
		
# 		;;
		
# 		5)
# 		CreateValidator
# 		;;
		
# 		6)
# 		InfoValidator
# 		;;
		
# 		7)
# 		synced
# 		;;
		
# 		8)
# 		logs
# 		;;
		
# 		6)
# 		back
# 		;;
		
# 		0)
# 		echo $(printBCyan '"Bye bye."')
# 		exit 
# 		;;
		
# 		*)
# 		clear
# 		printLogo
# 		printRed  ====================
# 		echo $(printRed '==') $(printBBlue 'NIBIRU') $(printRed '==') $(printYellow '****') $(printRed '==')
# 		printRed  ====================
# 		echo $(printRed 'Неверный запрос !')
# 		mainmenu
# 		;;
# 	esac
# }

# WalletBalance(){
# celestia-appd q bank balances $(celestia-appd keys show wallet -a)
# mainmenu
# }

# AddWallet(){
# clear
# printLogo
# printRed  =======================
# echo $(redprint '==') $(cyanprint 'CELESTIA') $(redprint '==') $(yellowprint '*****') $(redprint '==')
# printRed  =======================
# celestia-appd keys add wallet
# printRed         ============================================
# echo $(redprint '== ОБЯЗАТЕЛЬНО СОХРАНИТЕ СИД ФРАЗУ !!!!!! ==')
# printRed         ============================================
# mainmenu
# }

# AddWalletOrchestrator(){
# clear
# printLogo
# printRed  =======================
# echo $(redprint '==') $(cyanprint 'CELESTIA') $(redprint '==') $(yellowprint '*****') $(redprint '==')
# printRed  =======================
# celestia-appd keys add orchestrator
# printRed         ============================================
# echo $(redprint '== ОБЯЗАТЕЛЬНО СОХРАНИТЕ СИД ФРАЗУ !!!!!! ==')
# printRed         ============================================
# mainmenu
# }

# synced(){
# clear
# printLogo
# printRed  =======================
# echo $(redprint '==') $(cyanprint 'CELESTIA') $(redprint '==') $(yellowprint '*****') $(redprint '==')
# printRed  =======================
# nibid status 2>&1 | jq .SyncInfo
# mainmenu
# }

# logs(){
# submenu
# }

# back(){
# source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/nodes/celestia/main.sh)
# }

# submenu(){
#     echo -ne "
# $(yellowprint    'Для того что бы остановить журнал логов надо нажать') $(cyanprint 'CTRL+Z') $(yellowprint '!!!')

# Для продолжения нажмите Enter:  "
#    read -r ans
#     case $ans in
   
#     *)
#         sudo journalctl -u celestia-appd -f --no-hostname -o cat
#         mainmenu
#         ;;
#     esac
# }


# mainmenu