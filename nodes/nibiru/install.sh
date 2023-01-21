#!/bin/bash

#X-l1bra
	clear && source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/scripts/common.sh)
printLogo
printRed  ====================
echo $(printRed '==') $(printBBlue 'NIBIRU') $(printRed '==') $(printYellow '****') $(printRed '==')
printRed  ====================
echo
	printGreen  ----------------------------------------
echo $(printYellow 'Минимальные требования к оборудованию.')
echo $(printBCyan '4CPU 8RAM 100GB')
	printGreen  ----------------------------------------
echo $(printYellow 'Рекомендуемые требования к оборудованию.')
echo $(printBCyan '8CPU 32RAM 200GB')
	printGreen  ----------------------------------------

mainmenu() {
	echo -ne "
$(printCyan	'Вы действительно хотите начать установку') $(printCyanBlink '???')
 $(printGreen	'1) Да')
 $(printRed	'2) Нет')
$(printCyan	'Введите цифру:') "
	read -r ans
	case $ans in
		1)
		yes
		;;
		2)
		no
		;;
		*)
		clear
		printLogo
		printRed  ====================
		echo $(printRed '==') $(printBBlue 'NIBIRU') $(printRed '==') $(printYellow '****') $(printRed '==')
		printRed  ====================
		echo $(printRed 'Неверный запрос !')
        	mainmenu
        	;;
    esac
}


no(){
source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/nodes/nibiru/main.sh)
}
yes(){
clear
printLogo
printRed  =======================================================================
read -r -p "Введите имя ноды:" NODE_MONIKER


printBCyan "Пожалуйста подождите........" && sleep 1
printYellow "1. Oбновляем наш сервер........" && sleep 1
	sudo apt update  > /dev/null 2>&1 && sudo apt upgrade -y  > /dev/null 2>&1
printGreen "Готово!" && sleep 1


printYellow "2. Устанавливаем дополнительные пакеты........" && sleep 1
	sudo apt install -y make clang pkg-config libssl-dev build-essential git gcc lz4 chrony unzip curl jq ncdu htop net-tools lsof fail2ban wget -y > /dev/null 2>&1
printGreen "Готово!" && sleep 1


printYellow "3. Задаем переменные........" && sleep 1
	CHAIN_ID="nibiru-testnet-2"
	CHAIN_DENOM="unibi"
	BINARY_NAME="nibid"
	BINARY_VERSION_TAG="v0.16.3"
	IDENTITY="8F3C23EC3306B513"
	echo -e "Node moniker:       ${CYAN}$NODE_MONIKER${NC}"
	echo -e "Chain id:           ${CYAN}$CHAIN_ID${NC}"
	echo -e "Chain demon:        ${CYAN}$CHAIN_DENOM${NC}"
	echo -e "Binary version tag: ${CYAN}$BINARY_VERSION_TAG${NC}"
	echo -e "IDENTITY:           ${CYAN}$IDENTITY${NC}"
printGreen "Готово!" && sleep 1


printYellow "4. Устанавливаем go........" && sleep 1
	if ! [ -x "$(command -v go)" ]; then
	source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/scripts/go/go_1.19.4.sh) > /dev/null 2>&1
	source .bash_profile
	fi
	echo "$(go version)"
printGreen "Готово!" && sleep 1


printYellow "5. Скачиваем и устанавливаем бинарник........"
	cd || return
	rm -rf nibiru
	git clone https://github.com/NibiruChain/nibiru
	cd nibiru || return
	git checkout v0.16.3
	make install
	nibid version # v0.16.3
printGreen "Готово!" && sleep 1


printYellow "6. Инициализируем ноду........" && sleep 1
	nibid config keyring-backend test
	nibid config chain-id $CHAIN_ID
	nibid init "$NODE_MONIKER" --chain-id $CHAIN_ID
printGreen "Готово!" && sleep 1


printYellow "7. Добавляем сиды и пиры........" && sleep 1
	curl -s https://rpc.testnet-2.nibiru.fi/genesis | jq -r .result.genesis > $HOME/.nibid/config/genesis.json
	curl -s https://snapshots3-testnet.nodejumper.io/nibiru-testnet/addrbook.json > $HOME/.nibid/config/addrbook.json
	SEEDS="dabcc13d6274f4dd86fd757c5c4a632f5062f817@seed-2.nibiru-testnet-2.nibiru.fi:26656,a5383b33a6086083a179f6de3c51434c5d81c69d@seed-1.nibiru-testnet-2.nibiru.fi:26656"
	PEERS=""
	sed -i 's|^seeds *=.*|seeds = "'$SEEDS'"|; s|^persistent_peers *=.*|persistent_peers = "'$PEERS'"|' $HOME/.nibid/config/config.toml
printGreen "Готово!" && sleep 1


printYellow "8. Настраиваем прунинг........" && sleep 1
	PRUNING_INTERVAL=$(shuf -n1 -e 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97)
	sed -i 's|^pruning *=.*|pruning = "custom"|g' $HOME/.nibid/config/app.toml
	sed -i 's|^pruning-keep-recent  *=.*|pruning-keep-recent = "100"|g' $HOME/.nibid/config/app.toml
	sed -i 's|^pruning-interval *=.*|pruning-interval = "'$PRUNING_INTERVAL'"|g' $HOME/.nibid/config/app.toml
	sed -i 's|^snapshot-interval *=.*|snapshot-interval = 2000|g' $HOME/.nibid/config/app.toml
printGreen "Готово!" && sleep 1


printYellow "9. Задаем минимальную цену за gas........" && sleep 1
	sed -i 's|^minimum-gas-prices *=.*|minimum-gas-prices = "0.0001unibi"|g' $HOME/.nibid/config/app.toml
	sed -i 's|^prometheus *=.*|prometheus = true|' $HOME/.nibid/config/config.toml
printGreen "Готово!" && sleep 1


printYellow "10. Создаем сервис файл........" && sleep 1
sudo tee /etc/systemd/system/nibid.service > /dev/null << EOF
[Unit]
Description=Nibiru Node
After=network-online.target
[Service]
User=$USER
ExecStart=$(which nibid) start
Restart=on-failure
RestartSec=10
LimitNOFILE=10000
[Install]
WantedBy=multi-user.target
EOF
printGreen "Готово!" && sleep 1


printYellow "10. Сбрасываем данные........"
	nibid tendermint unsafe-reset-all --home $HOME/.nibid --keep-addr-book
printGreen "Готово." && sleep 1


printYellow "11. Подгружаем снапшот........"
	SNAP_RPC="https://nibiru-testnet.nodejumper.io:443"

	LATEST_HEIGHT=$(curl -s $SNAP_RPC/block | jq -r .result.block.header.height)
	BLOCK_HEIGHT=$((LATEST_HEIGHT - 2000))
	TRUST_HASH=$(curl -s "$SNAP_RPC/block?height=$BLOCK_HEIGHT" | jq -r .result.block_id.hash)

	echo $LATEST_HEIGHT $BLOCK_HEIGHT $TRUST_HASH

	sed -i 's|^enable *=.*|enable = true|' $HOME/.nibid/config/config.toml
	sed -i 's|^rpc_servers *=.*|rpc_servers = "'$SNAP_RPC,$SNAP_RPC'"|' $HOME/.nibid/config/config.toml
	sed -i 's|^trust_height *=.*|trust_height = '$BLOCK_HEIGHT'|' $HOME/.nibid/config/config.toml
	sed -i 's|^trust_hash *=.*|trust_hash = "'$TRUST_HASH'"|' $HOME/.nibid/config/config.toml

	curl https://snapshots3-testnet.nodejumper.io/nibiru-testnet/wasm.lz4 | lz4 -dc - | tar -xf - -C $HOME/.nibid/data
printGreen "Готово."


printYellow "11. Запускаем ноду........" && sleep 1
	sudo systemctl daemon-reload
	sudo systemctl enable nibid
	sudo systemctl start nibid
printGreen "Готово!"


printRed  =============================================================================== 
	echo -e "X-l1bra:                   ${CYAN} https://t.me/xl1bra ${NC}"
printRed  =============================================================================== 

}


submenu(){
echo -ne "
$(printGreen    'Установка завершена.') $(printGreenBlink '!!!')
 		1) Просмотреть логи
 		2) Проверить синхронизацию
 		3) В меню
Нажмите Enter:  "
   read -r ans
    case $ans in
        1)
        subsubmenu
        ;;
        2)
        curl -s localhost:26657/status | jq .result.sync_info.catching_up
        submenu
        ;;
        3)
        source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/nodes/nibiru/main.sh)
        ;;
        *)
        source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/scripts/logo.sh)
        printRed  =======================================================================
        echo $(redprint 'Неверный запрс !!!')
        submenu
        ;;
    esac
}

subsubmenu(){
    echo -ne "
$(printYellow    'Для того что бы остановить журнал логов надо нажать') $(printBCyan 'CTRL+Z') $(printYellow '!!!')

$(printBCyan 'Для продолжения нажмите Enter:')  "
	read -r ans
	case $ans in
		*)
		sudo journalctl -u nibid -f --no-hostname -o cat
		submenu
		;;
	esac
}

mainmenu