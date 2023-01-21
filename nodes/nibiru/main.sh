#! /bin/bash

#X-l1bra  
	clear && source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/scripts/common.sh)
printLogo
printRed  ====================
echo $(printRed '==') $(printBBlue 'NIBIRU') $(printRed '==') $(printYellow '****') $(printRed '==')
printRed  ====================
echo
mainmenu() {
    echo -ne "
	1) Управление
	2) Обновить
	3) Установка
	$(redprint     '4)') Удаление
	$(yellowprint  '5)') Вернутся назад
	$(yellowprint  '0)') Выйти
	Введите цифру:  "
	read -r ans
	case $ans in
		1)
		control
		;;
		2)
		update
		;;
		3)
		install
		;;
		4)
		delet
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
		printLogo
		printRed  ====================
		echo $(printRed '==') $(printBBlue 'NIBIRU') $(printRed '==') $(printYellow '****') $(printRed '==')
		printRed  ====================
		echo $(printRed 'Неверный запрос !')
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