#!/bin/bash

echo -e "Iniciando a Atualização dos Repositórios Aguarde.....\n"
apt update -y
echo -e "Sucesso !\n\n"
sleep 2
clear

echo -e "Iniciando o Upgrade do Sistema Aguarde.....\n"
apt upgrade -y
echo -e "Sucesso !\n\n"
clear

echo -e "Iniciando a Instalação do Apache2 Aguarde.....\n"
apt install apache2 -y
echo -e "Sucesso !\n\n"
sleep 2
clear

echo -e "Iniciando a Instalação do Unzip Aguarde.....\n"
apt install unzip -y
echo -e "Sucesso !\n\n"
sleep 2
clear

echo -e "Fazendo o Download dos Arquivos Web na Pasta /tmp Aguarde.....\n"
wget -c -P /tmp/ https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo -e "Sucesso !\n\n"
sleep 2
clear

echo -e "Descompactando os Arquivos Aguarde.....\n"
cd /tmp/
unzip main.zip
echo -e "Sucesso !\n\n"
sleep 2
clear

echo -e "Copiando os Arquivos para o Diretório Apache no /var/www/html Aguarde.....\n\n"
cp /tmp/linux-site-dio-main/* /var/www/html
cp -r /tmp/linux-site-dio-main/* /var/www/html
rm -r /tmp/linux-site-dio-main
echo -e "Sucesso !"
sleep 2
clear
