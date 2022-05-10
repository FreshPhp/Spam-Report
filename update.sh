#!bin/bash

CYAN="\033[1;36m"
YELLOW="\033[1;33m"
PURPLE="\033[1;35m"
GREEN="\033[1;32m"
RED='\033[1;31m'
NC='\033[0m'

echo "\033[1;33mVocê tem certeza que deseja atualizar o painel? [s/n]"
read -p "> " opts

if [ $opts = "s" ]; then

clear
echo "Atualizando, aguarde..."
git clone https://github.com/FreshPhp/Spam-Report > /dev/null 2> /dev/null

cp -r * ..
cd ..
rm -rf Spam-Report
npm i

clear
echo "Painel atualizado com sucesso!!"

elif [ $opts = "n"]; then
    clear
    echo "Atualização abortada!"
    exit
fi