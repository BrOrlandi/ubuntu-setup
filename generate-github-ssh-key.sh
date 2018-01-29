#!/bin/bash

echo "Generating ssh key..."
echo "====="
ssh-keygen -t rsa -N "" -b 4096 -C "brorlandi@gmail.com" -f ~/.ssh/id_rsa -y
echo "====="