


function printLogo {
  bash <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/scripts/logo.sh)
}

function printLine {
  echo "======================================================================================="
}


function addToPath {
  source $HOME/.bash_profile
  PATH_EXIST=$(grep ${1} $HOME/.bash_profile)
  if [ -z "$PATH_EXIST" ]; then
    echo "export PATH=$PATH:${1}" >>$HOME/.bash_profile
  fi
}

# Дополнительные свойства для текта:
	BOLD='\033[1m'			#	${BOLD}			# жирный шрифт (интенсивный цвет)
	DBOLD='\033[2m'			#	${DBOLD}		# полу яркий цвет (тёмно-серый, независимо от цвета)
	NBOLD='\033[22m'		#	${NBOLD}		# установить нормальную интенсивность
	UNDERLINE='\033[4m'		#	${UNDERLINE}		# подчеркивание
	NUNDERLINE='\033[4m'		#	${NUNDERLINE}		# отменить подчеркивание
	BLINK='\033[5m'			#	${BLINK}		# мигающий
	NBLINK='\033[0m'		#	${NBLINK}		# отменить мигание
	INVERSE='\033[7m'		#	${INVERSE}		# реверсия (знаки приобретают цвет фона, а фон -- цвет знаков)
	NINVERSE='\033[7m'		#	${NINVERSE}		# отменить реверсию
	BREAK='\033[m'			#	${BREAK}		# все атрибуты по умолчанию
	NORMAL='\033[0m'		#	${NORMAL}		# все атрибуты по умолчанию
	 
	# Цвет текста менее яркий:
	TBLACK='\033[30m'		#	${BLACK}		# чёрный цвет знаков
	TRED='\033[31m'			#	${RED}			# красный цвет знаков
	TGREEN='\033[32m'		#	${GREEN}		# зелёный цвет знаков
	TYELLOW='\033[33m'		#	${YELLOW}		# желтый цвет знаков
	TBLUE='\033[34m'		#	${BLUE}			# синий цвет знаков
	TMAGENTA='\033[35m'		#	${MAGENTA}		# фиолетовый цвет знаков
	TCYAN='\033[36m'		#	${CYAN}			# цвет морской волны знаков
	TGRAY='\033[37m'		#	${GRAY}			# серый цвет знаков
	TBYELLOW='\033[1;33m'		#	${YELLOW}		# желтый цвет знаков
	
	# Цвет текста яркий:
	BLACK='\033[30m'		#	${BLACK}		# чёрный цвет знаков
	RED='\033[91m'			#	${RED}			# красный цвет знаков
	GREEN='\033[92m'		#	${GREEN}		# зелёный цвет знаков
	YELLOW='\033[93m'		#	${YELLOW}		# желтый цвет знаков
	BLUE='\033[94m'			#	${BLUE}			# синий цвет знаков
	MAGENTA='\033[95m'		#	${MAGENTA}		# фиолетовый цвет знаков
	CYAN='\033[96m'			#	${CYAN}			# цвет морской волны знаков
	GRAY='\033[97m'			#	${GRAY}			# серый цвет знаков
	
	 
	# Цветом текста (жирным) (bold) :
	DEF='\033[39m'			#	${DEF}
	BGRAY='\033[1;30m'		#	${BGRAY}
	BRED='\033[1;31m'		#	${BRED}
	BGREEN='\033[1;32m'		#	${BGREEN}
	BYELLOW='\033[1;33m'		#	${BYELLOW}
	BBLUE='\033[1;34m'		#	${BBLUE}
	BMAGENTA='\033[1;35m'		#	${BMAGENTA}
	BCYAN='\033[1;36m'		#	${BCYAN}
	WHITE='\033[1;37m'		#	${WHITE}
	 
	# Цвет фона
	BGBLACK='\033[40m'		#	${BGBLACK}
	BGRED='\033[41m'		#	${BGRED}
	BGGREEN='\033[42m'		#	${BGGREEN}
	BGBROWN='\033[43m'		#	${BGBROWN}
	BGBLUE='\033[44m'		#	${BGBLUE}
	BGMAGENTA='\033[45m'		#	${BGMAGENTA}
	BGCYAN='\033[46m'		#	${BGCYAN}
	BGGRAY='\033[47m'		#	${BGGRAY}
	BGDEF='\033[49m'		#	${BGDEF}


	ESC=$(printf '\033')
	RESET="${ESC}[0m"		#	${ESC}
	
	#ФУНКЦИИ
	#Обычный цвет:
	
	printBlack () { printf "${BLACK}%s${RESET}\n" "$1"; }
	printRed () { printf "${RED}%s${RESET}\n" "$1"; }
	printGreen () { printf "${GREEN}%s${RESET}\n" "$1"; }
	printYellow () { printf "${YELLOW}%s${RESET}\n" "$1"; }
	printBlue () { printf "${BLUE}%s${RESET}\n" "$1"; }
	printMagenta () { printf "${MAGENTA}%s${RESET}\n" "$1"; }
	printCyan () { printf "${CYAN}%s${RESET}\n" "$1"; }
	printWhite () { printf "${WHITE}%s${RESET}\n" "$1"; }
	
	#Темный цвет:
	
	printBlack () { printf "${BLACK}%s${RESET}\n" "$1"; }
	printRed () { printf "${RED}%s${RESET}\n" "$1"; }
	printGreen () { printf "${GREEN}%s${RESET}\n" "$1"; }
	printYellow () { printf "${YELLOW}%s${RESET}\n" "$1"; }
	printBlue () { printf "${BLUE}%s${RESET}\n" "$1"; }
	printMagenta () { printf "${MAGENTA}%s${RESET}\n" "$1"; }
	printCyan () { printf "${CYAN}%s${RESET}\n" "$1"; }
	printWhite () { printf "${WHITE}%s${RESET}\n" "$1"; }
	
	# Цветом текста (жирным) (bold):
	
	printBRed () { printf "${BRED}%s${RESET}\n" "$1"; }
	printBGreen () { printf "${BGREEN}%s${RESET}\n" "$1"; }
	printBYellow () { printf "${BYELLOW}%s${RESET}\n" "$1"; }
	printBBlue () { printf "${BBLUE}%s${RESET}\n" "$1"; }
	printBMagenta () { printf "${BMAGENTA}%s${RESET}\n" "$1"; }
	printBCyan () { printf "${BCYAN}%s${RESET}\n" "$1"; }
	

	printRedBlink () { printf "${BLINK}${RED}%s${RESET}\n" "$1"; }
	printGreenBlink () { printf "${BLINK}${GREEN}%s${RESET}\n" "$1"; }
	printYellowBlink () { printf "${BLINK}${YELLOW}%s${RESET}\n" "$1"; }
	printBlueBlink () { printf "${BLINK}${BLUE}%s${RESET}\n" "$1"; }
	printMagentaBlink () { printf "${BLINK}${MAGENTA}%s${RESET}\n" "$1"; }
	printCyanBlink () { printf "${BLINK}${CYAN}%s${RESET}\n" "$1"; }
	printWhiteBlink () { printf "${BLINK}${WHITE}%s${RESET}\n" "$1"; }
	
	printBRedBlink () { printf "${BLINK}${BRED}%s${RESET}\n" "$1"; }
	printBGreenBlink () { printf "${BLINK}${BGREEN}%s${RESET}\n" "$1"; }
	printBTYellow () { printf "${TBYELLOW}%s${RESET}\n" "$1"; }

function printnibiru {
printRed  ====================
echo $(printRed '==') $(printBBlue 'NIBIRU') $(printRed '==') $(printBYellow '****') $(printRed '==')
printRed  ====================
}

function printcelestia {
printRed  =======================
echo $(printRed '==') $(printBMagenta 'CELESTIA') $(printRed '==') $(printBYellow '*****') $(printRed '==')
printRed  =======================
}

function printComing {
printCyanBlink  ===================
echo $(printCyanBlink '==') $(printBYellow 'Coming soon !!!') $(printCyanBlink '==')
printCyanBlink  ===================
}