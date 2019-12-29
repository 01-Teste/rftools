#!/usr/bin/env bash

# Desenvolvedor: Rafael Silva Santos
# Contato: rfaelsst@gmail.com | (75) 9 8893-2870
# Descrição: Desinstalador da ferramenta rftools

# Validações
if [[ $UID != 0 ]]; then echo "O desinstalador deve ser executado como super-usuário"; exit 1; fi

# Tomada de decisão
read -p "Deseja desinstalar o programa y|n padrão é [N]: " OP
if [[ $OP != [y,Y] ]]; then exit 0; fi

# Desinstalação da ferramenta
if [[ -d '/etc/rftools' ]]; then rm -rf /etc/rftools; fi
if [[ -f '/usr/local/bin/rftools' ]]; then rm -rf /usr/local/bin/rftools; fi

# Finalização do programa
echo "O programa foi desinstalado"
