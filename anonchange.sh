#!/bin/bash
# Desenvolvido por Richard Guedes

clear
echo -e '\e[1;36m
 █████  ███   ██  ██████  ███   ██  ██████ ██  ██  █████  ███   ██  ██████  ███████ 
██   ██ ████  ██ ██   ██ ████  ██ ██      ██  ██ ██   ██ ████  ██ ██       ██      
███████ ██ ██ ██ ██   ██ ██ ██ ██ ██      ██████ ███████ ██ ██ ██ ██   ███ █████   
██   ██ ██  ████ ██   ██ ██  ████ ██      ██  ██ ██   ██ ██  ████ ██    ██ ██      
██   ██ ██   ███  ██████ ██   ███  ██████ ██  ██ ██   ██ ██   ███  ██████  ███████ 
\e[0m'

echo -e '\e[1;33mBem-vindo ao AnonChange!\e[0m'
echo 'Desenvolvido por Richard Guedes'
echo 'E-Mail: richardguedes@protonmail.com'
echo ''
echo '1) Mudar o IP automaticamente'
echo '2) Instalar/Iniciar o AnonSurf'
echo '3) Sair'
echo ''
echo -e 'Para encerrar a qualquer momento, pressione \e[1;31mCTRL+C\e[0m.'
echo ''

menu() {
    while true; do
        read -p "Escolha uma opção [1-3]: " opcao
        case $opcao in
            1) mudarIP ;;
            2) instalarOuIniciarAnonSurf ;;
            3) sair ;;
            *) echo -e "\e[1;31mOpção inválida. Tente novamente.\e[0m" ;;
        esac
    done
}

mudarIP() {
    echo ""
    echo "Selecione sua distribuição:"
    echo "1) Kali Linux"
    echo "2) ParrotSec"
    while true; do
        read -p "Digite 1 para Kali Linux ou 2 para ParrotSec: " kp
        if [[ "$kp" == "1" || "$kp" == "2" ]]; then
            break
        else
            echo -e "\e[1;31mEscolha inválida. Digite 1 ou 2.\e[0m"
        fi
    done

    while true; do
        read -p "Digite o intervalo em segundos para trocar o IP (mínimo 10): " numero
        if [[ "$numero" =~ ^[0-9]+$ && "$numero" -ge 10 ]]; then
            break
        else
            echo -e "\e[1;31mPor favor, digite um número inteiro maior ou igual a 10.\e[0m"
        fi
    done

    # Verifica se o Tor está instalado
    if ! command -v tor >/dev/null 2>&1; then
        echo -e '\e[1;31mO serviço Tor não foi encontrado no sistema!\e[0m'
        echo -e '\e[1;33mTentando instalar Tor automaticamente...\e[0m'
        sleep 1
        sudo apt update
        sudo apt install -y tor
        if ! command -v tor >/dev/null 2>&1; then
            echo -e '\e[1;33mTentando corrigir problemas de chave pública e dependências...\e[0m'
            sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ED65462EC8D5E4C5
            sudo apt update
            sudo apt --fix-broken install
            sudo apt install -y tor
            if ! command -v tor >/dev/null 2>&1; then
                echo -e '\e[1;31mFalha ao instalar o Tor.\e[0m'
                echo -e '\e[1;33mPossíveis causas:\e[0m'
                echo -e '\e[1;33m- Chave pública do repositório ausente (NO_PUBKEY)\e[0m'
                echo -e '\e[1;33m- Dependências quebradas\e[0m'
                echo -e '\e[1;36mTente rodar os comandos abaixo manualmente:\e[0m'
                echo -e '\e[1;34msudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ED65462EC8D5E4C5\e[0m'
                echo -e '\e[1;34msudo apt update\e[0m'
                echo -e '\e[1;34msudo apt --fix-broken install\e[0m'
                echo -e '\e[1;34msudo apt install -y tor\e[0m'
                sleep 5
                return
            fi
        fi
        echo -e '\e[1;32mTor instalado com sucesso!\e[0m'
        sleep 1
    fi

    echo -e "\e[1;32mIniciando troca automática de IP a cada $numero segundos...\e[0m"
    echo "Para parar, pressione CTRL+C."
    sleep 2

    while true; do
        if [ "$kp" = "1" ]; then
            echo -e "\e[1;34m[Kali] Mudando IP...\e[0m"
            sudo anonsurf change
        else
            echo -e "\e[1;34m[ParrotSec] Mudando IP...\e[0m"
            sudo anonsurf changeid
        fi
        sleep "$numero"
    done
}

instalarOuIniciarAnonSurf() {
    echo ""
    echo "Selecione sua distribuição:"
    echo "1) Kali Linux (instalar AnonSurf)"
    echo "2) ParrotSec (iniciar AnonSurf)"
    while true; do
        read -p "Digite 1 para Kali Linux ou 2 para ParrotSec: " dist
        if [[ "$dist" == "1" || "$dist" == "2" ]]; then
            break
        else
            echo -e '\e[1;31mEscolha inválida. Digite 1 ou 2.\e[0m'
        fi
    done

    if [ "$dist" = "1" ]; then
        # Verifica se o diretório kali-anonsurf já existe
        if [ -d "kali-anonsurf" ]; then
            echo -e '\e[1;32mAnonSurf já está instalado no Kali Linux!\e[0m'
            sleep 2
            return
        fi
        echo -e '\e[1;33mInstalando AnonSurf para Kali Linux...\e[0m'
        sleep 1
        sudo apt update
        sudo apt install -y git
        git clone https://github.com/richardg7/kali-anonsurf.git
        cd kali-anonsurf || { echo "Falha ao acessar o diretório."; return; }
        sudo ./installer.sh
        cd ..
        echo -e '\e[1;32mAnonSurf instalado com sucesso!\e[0m'
    else
        echo -e '\e[1;33mIniciando AnonSurf no ParrotSec...\e[0m'
        sudo anonsurf start
        echo -e '\e[1;32mAnonSurf iniciado!\e[0m'
    fi
}

sair() {
    echo -e "\e[1;36mObrigado por usar o AnonChange! Até logo.\e[0m"
    exit 0
}

menu