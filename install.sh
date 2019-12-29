#!/usr/bin/env bash

# Desenvolvedor: Rafael Silva Santos
# Contatos: rfaelsst@gmail.com | (75) 9 8893-2870
# Descrição instalador da ferramenta rftools

# Validações
if [[ $UID != 0 ]]; then echo "O instalador deve ser executado com super-usuário"; exit 1; fi
if [[ ! -d /etc/rftools ]]; then mkdir /etc/rftools; fi
if [[ ! -e /usr/bin/htop ]]; then apt-get -y install htop; fi
if [[ ! -e /usr/bin/mcedit ]]; then apt-get -y install mcedit; fi

# Configurando os arquivos para o funcionamento do sistema
cp -r ./{LIB,VARS,README,install.sh,uninstall.sh} /etc/rftools
cṕ -r ./rtools /usr/local/bin/ ; chmod +x /usr/local/bin/rftools

# Erros
if [[ ! -d /etc/rftools/LIB ]]; then echo "AS BIBLIOTECAS NÂO FORAM INSTALADAS"; fi
if [[ ! -d /etc/rftools/VARS ]]; then echo "AS VARIAVEIS NÂO FORAM CONFIGURADAS"; fi

# Finalizando instalador
echo "Instalação concluida com sucesso!"
