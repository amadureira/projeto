Iniciar docker ansible
######################

Instala√√o do docker e inicializa√√o dos master
##########
Para instalarmos o docker, precisamos definir o inventario de servidores. Segue um exemplo abaixo:
[swarm]
10.0.0.10 master=1
10.0.0.11 master=1
10.0.0.12 master=1
10.0.0.13
10.0.0.14
10.0.0.15
