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
echo "Escolha 1 para Mudar o IP a cada segundo escolhido"
echo "Escolha 2 para Instalar o AnonSurf caso não o tenha (No ParrotSec não precisa)"
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

#if test $(id -u) != 0

#if [$opcao -ge 1] then
mudarIP() {

nome="IP Mudando"

echo “Digite 1 para Kali Linux e 2 para ParrotSec”
read kp;
echo “Digite os segundos do IP”
read numero;


if [ $numero -ge 0 ]; then

while true; do 

#change1="sudo anonsurf change"
#change2=sudo anonsurf changeid

if [ $kp = "1" ]; then
echo $nome
sudo anonsurf change;
sleep $numero
else
echo $nome
sudo anonsurf changeid
sleep $numero
fi

done 
&>/dev/null & alias killchange="kill -9 $!"

else
echo “O número $numero é negativo!”
fi

}

installAnonSurf() {
nome2="Aguarde o AnonSurf esta sendo instalado.."
echo $nome2
#echo "Instalando o Git"
#sudo apt install git
echo "Instalando o Anonsurf"
#sudo git clone 'https://github.com/richardg7/anonchange.git'
#cd 'anonchange'
cd 'anonsurf'
./installer.sh
cd ..
}

#fi
#if [$opcao -ge 2] then

sair() {
nome3="Pressione [CTRL+C] para stop.."
echo $nome3


exit 0
}
#fi

#then                
#    echo "Usuário sem permissão de root, cancelando o processo."
#    exit                    
#fi

menu
