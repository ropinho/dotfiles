#!/bin/sh
# 
# Minha configuração inicial do Arch Linux no pós instalação.
# 
# Esse script instala pacotes e configura arquivos de configuração, deve ser
# executado com permissões de superusuário para que algumas operações sejam
# feitas, caso contrário somente as operações que manipulam só o diretório $HOME
# do usuário atual serão feitas.
# - Ronaldd Pinho

# Cores e formatacoes

# Imprime em negrito
echoBold() {
    echo -ne "\e[0;1m$1\e[0m"
}

# Printa com uma cor Unix, deve receber um numero que define a cor e uma string
echoUnixColor() {
    echo -ne "\e[38;5;$1m$2\e[0m"
}
echoUnixColorLine() {
    echo -e "\e[38;5;$1m$2\e[0m"
}

echoBlue() {
    echoUnixColorLine 27 $1
}

# Checa se o usuário é o root ou não
if [ $EUID -eq 0 ]; then 
    echo -n "You are running it as "
    echoBold ""
    user_sign='#'
else
    echo -n "You are running it as "
    echoBold "$USER"
    echo ". Only $USER's operations will be valid."
    user_sign="\$"
fi

# Executa um comando imprimindo uma mensagem sobre ele no console e 
# redirencionando sua saida para o /dev/null
runcommand() {
    echo -n "$user_sign "
    echo -e "\e[38;5;32m$1\e[0m"
    $1 > /dev/null
    if [ $? -ne 0 ]; then
    	exit $?
    fi
}

# Lista de diretorios
DIRS=("$HOME/.cargo")

# Instalar pacotes se for root
if [ $EUID -ne 0 ]; then
    echo 'Verificando a existencia de alguns diretorios'
fi

runcommand 'echo "Hello World"'
runcommand 'ls other'
