#! /bin/bash

#X-l1bra  
clear && source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/scripts/common.sh)
printLogo
printRed  =======================================================================

mainmenu() {
	echo -ne "
$(printBCyan    'Выберите ноду !')
$(printBMagenta    '1)') Celestia $(printBTYellow *****)
$(printBBlue       '2)') Nibiru $(printBTYellow ****)
$(printBMagenta    '3)') DeFund $(printBTYellow ***)
$(printBYellow     '4)') Shardiun $(printBTYellow *****)
$(printBRed        '0)') Exit
Введите цифру:  "
	read -r ans
	case $ans in
	
		1)
		celestia
		;;
		
		2)
		nibiru
		;;
		
		3)
		defund
		;;
		
		4)
		shardium
		;;
		
		0)
		echo $(printBCyan '"Bye bye."')
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

nibiru(){
source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/nodes/nibiru/main.sh)
}

defund(){
clear
printLogo
printRed  =======================================================================
echo $(printBYellow "Coming soon !!!")
mainmenu
}

shardium(){
clear
printLogo
printRed  =======================================================================
echo $(printBYellow "Coming soon !!!")
mainmenu
}

mainmenu