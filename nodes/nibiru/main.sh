#! /bin/bash

#X-l1bra  
	clear && source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/scripts/common.sh)
printLogo
printnibiru
echo
mainmenu() {
    echo -ne "
1) Управление
2) Обновить
3) Установка
$(printRed     '4)') Удаление
$(printYellow  '5)') Вернутся назад
$(printYellow  '0)') Выйти
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
		echo $(printBCyan '"Bye bye."')
		exit
		;;
		*)
		clear
		printLogo
		printnibiru
		echo $(printRed 'Неверный запрос !')
		;;
	esac
}

install(){
source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/nodes/nibiru/install.sh)
}

control(){
source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/nodes/nibiru/control.sh)
}

update(){
clear
printLogo
echo
echo $(printBYellow "Coming soon !!!")
mainmenu
#source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/nodes/nibiru/update.sh)
}

delet(){
source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/nodes/nibiru/delet.sh)
}

back(){
source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/scripts/x-l1bra.sh)
}

mainmenu