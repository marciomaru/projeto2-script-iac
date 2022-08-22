#!/bin/bash

echo "Atualizando servidor..." 
apt-get update
apt-get upgrade -y

echo "Instalando Apache..."
apt-get install apache2 -y

echo "Instalando Unzip..."
apt-get install unzip -y

echo "Baixando e descompactando arquivo..."
cd /tmp
wget https://github.com/marciomaru/jogo-da-memoria-master.zip
unzip jogo-da-memoria-master.zip
cd jogo-da-memoria-master

echo "Copiando arquivo para pasta padrão do apache..."
cp -R * /var/www/html

echo "Fim"
