#!/bin/bash
# Gerar mod_harbour v2 e copiar para diretorios corretos

clear
echo "."
echo "Parando servico apache..."
sudo systemctl stop apache2
bash go.sh
bash goa.sh
sudo cp output/linux/libmod_harbour.v2.so /usr/lib/apache2/modules/mod_harbour.v2.so -v
sudo cp output/linux/liblibmhapache.so /var/www/html/libmhapache.so
echo "Iniciando o servico apache..."
sudo systemctl start apache2
