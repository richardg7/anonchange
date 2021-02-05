##AnonChange

O AnonChange foi projetado para mudar o IP em determinados segundos com o AnonSurf e stealth do ParrotSec, portado para funcionar com Kali Linux.

NOTE: Desenvolvido para fins Academicos.

##Como usar este repo

Este repo contém as fontes dos pacotes AnonChange para o AnonSurf combinados em um.

The easiest way to get this working is to just run the installer. See the installation section for further info.

NOTE: Isso pode funcionar com qualquer sistema debian / ubuntu, mas só foi testado para funcionar em um sistema ParrotSec e amd64 kali-rolling.

## Uso

### AnonSurf
O Anonsurf tornará anônimo todo o sistema sob TOR usando IPTables. Também permitirá que você inicie e pare o i2p.

NOTA: NÃO execute isso como ```service anonsurf $COMMAND```. Execute isso como ```bash anonchange.sh```

``````bash
Uso:
 bash anonchange.sh {Instalar AnonSurf|Ligar AnonSurf|Mudar IP AnonSurf|Parar AnonSurf|Reiniciar AnonSurf|Status AnonSurf|Bomba Pandora}

 {Instalar AnonSurf - Instala o AnonSurf caso não o  te
 Ligar AnonSurf - Iniciar anônimo em todo o sistema
          tunelamento sob proxy TOR através de iptables
 Mudar IP AnonSurf - Muda o IP do AnonSurf a cada 3 segundos
 Parar AnonSurf - Redefinir as configurações de iptables originais
          e volte para limpar a navegação
 Reiniciar AnonSurf - Combina as opções " parar " e " iniciar "
 alterar - altera a identidade reiniciando o TOR 
 Status AnonSurf - Verifique se o AnonSurf está funcionando corretamente
---- [recursos relacionados ao I2P] ----
 starti2p - Iniciar serviços i2p
 stopi2p - interrompe os serviços i2p
 Bomba Pandora - O Pandora substitui automaticamente a RAM quando o sistema é desligado
```

## Installation
Este pacote vem com um executor que torna as coisas extremamente fáceis:

```bash
bash anonchange.sh
ou
./anonchange.sh
```

Assim que o instalador estiver concluído, você poderá usar os módulos anonsurf e pandora.

### Pandora
O Pandora substitui automaticamente a RAM quando o sistema é desligado. O Pandora também pode ser executado manualmente:

```bash
pandora bomb
```

NOTA: NÃO execute isso como service anonsurf $COMMAND. Execute isso como anonsurf $COMMAND
