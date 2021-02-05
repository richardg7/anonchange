#!/bin/bash
#Desenvolvido por Richard Guedes

echo ' █████  ███    ██  ██████  ███    ██  ██████ ██   ██  █████  ███    ██  ██████  ███████     
██   ██ ████   ██ ██    ██ ████   ██ ██      ██   ██ ██   ██ ████   ██ ██       ██          
███████ ██ ██  ██ ██    ██ ██ ██  ██ ██      ███████ ███████ ██ ██  ██ ██   ███ █████       
██   ██ ██  ██ ██ ██    ██ ██  ██ ██ ██      ██   ██ ██   ██ ██  ██ ██ ██    ██ ██          
██   ██ ██   ████  ██████  ██   ████  ██████ ██   ██ ██   ██ ██   ████  ██████  ███████  '

echo "Desenvolvido por Richard Guedes"
echo "E-Mail: richardguedes@protonmail.com"
echo ""
echo "Escolha 1 para Mudar o IP a cada 3 segundos"
echo "Escolha 2 para Instalar o AnonSurf caso não o tenha"
echo "Escolha 3 para Sair do AnonChange.."
echo "se quiser encerrar Pressione [CTRL+C] para stop.."
read opcao

menu(){
case $opcao in
0);;    
1) mudarIP ;;
2) installAnonSurf ;;
3) sair ;;
esac
}

#if [$opcao -ge 1] then
mudarIP() {
nome="IP Mudado"
echo $nome

while true; do 
sudo anonsurf change; sleep 3; 
done 
&>/dev/null & alias killchange="kill -9 $!"

}

installAnonSurf() {
nome2="Aguarde o AnonSurf esta sendo instalado.."
echo $nome2
echo "Instalando o Git"
sudo apt install git
echo "Instalando o Anonsurf"
sudo git clone 'https://github.com/richardg7/anonchange.git'
cd 'anonchange'
cd 'anonsurf'
./installer.sh
}

#fi
#if [$opcao -ge 2] then

sair() {
nome3="Pressione [CTRL+C] para stop.."
echo $nome3


exit 0
}
#fi

menu
