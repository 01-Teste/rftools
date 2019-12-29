#!/usr/bin/env bash

# Desenvolvedor: Rafael Silva Santos
# Contatos: rfaelsst@gmail.com | (75) 9 8893-2870
# Descrição instalador da ferramenta rftools

# Validações
if [[ $UID != 0 ]]; then echo "O instalador deve ser executado com super-usuário"; exit 1; fi
if [[ ! -d '/etc/rftools' ]]; then mkdir /etc/rftools; fi
if [[ ! -f '/usr/local/bin/rftools' ]]; then echo "Configurar o PATH do programa"; fi

# Configurando os arquivos para o funcionamento do sistema
cp -r /home/rafael/bin/PROGRAMAS/RFTOOLS/{LIB,VARS,README,rftools,install.sh,uninstall.sh} /etc/rftools

# Erros
if [[ ! -d '/etc/rftools/LIB' ]]; then echo "AS BIBLIOTECAS NÂO FORAM INSTALADAS"; fi
if [[ ! -d '/etc/rftools/VARS' ]]; then echo "AS VARIAVEIS NÂO FORAM CONFIGURADAS"; fi

# Finalizando instalador
echo "Instalação concluida com sucesso!"
