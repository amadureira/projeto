Projeto
=======

O objetivo deste projeto é entregar um cluster de Swarm com uma aplicação de exemplo. 

A infraestrutura será entregue na AWS. 


Passos
======

***Subir a Infra***

No diretório terraform temos os arquivos necessários para subir toda a infraestrutura. Para iniciar o deploy devemos executar os comandos abaixo dentro deste diretório

* terraform init
* terraform apply 

***Instalar o cluster Swarm***

Para instalar o cluster, devemos primeiro executar o script prepare.sh. Este script deve instalar os pacotes git e python2-pip, além de clonar este repositório.

No diretório projeto devemos executar o script exec.sh. Este script deverá instalar o cluster e em seguida fazer o deploy da aplicação.

**OBS** 

Por questões de segurança, a chave privada foi enviada por e-mail. 

O script deverá ser executado dentro de uma das máquinas da rede pública. 
