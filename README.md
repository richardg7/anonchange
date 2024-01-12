# AnonChange

O AnonChange foi projetado para mudar o IP em determinados segundos com o AnonSurf e stealth do ParrotSec, portado para funcionar com Kali Linux.

NOTE: Desenvolvido para fins Acadêmicos.

![alt text](https://github.com/richardg7/anonchange/blob/main/anonchange.png?raw=true)

## Como usar este repo

Este repo contém as fontes dos pacotes AnonChange para o AnonSurf combinados em um.

A maneira mais fácil de fazer isso funcionar é apenas executar o instalador. Veja a seção de instalação para mais informações.

NOTE: Isso pode funcionar com qualquer sistema debian / ubuntu, mas só foi testado para funcionar em um sistema ParrotSec e amd64 kali-rolling.

## Uso

### AnonChange
O AnonChange mudará o seou IP no sistema TOR usando IPTables a cada 3 segundos.

NOTA: NÃO execute isso como ```$COMMAND anonchange.sh```. Execute isso como ```bash anonchange.sh```

```bash
Uso:
 bash anonchange.sh {Instalar AnonSurf|Mudar IP AnonSurf|Parar IP AnonSurf}

 Instalar AnonSurf - Instala o AnonSurf caso não o  tenha instalado
 Mudar IP AnonSurf - Muda o IP do AnonSurf a cada 3 segundos
 Parar IP AnonSurf - Sair do AnonChange
```

### anonsurf
O Anonsurf tornará anônimo todo o sistema sob TOR usando IPTables. Também permitirá que você inicie e pare o i2p.

NOTA: NÃO execute isso como```service anonsurf $COMMAND```. Execute isso como ```anonsurf $COMMAND```

```bash
Usage:
 anonsurf {start|stop|restart|change|status}

 start - Start system-wide anonymous
          tunneling under TOR proxy through iptables
 stop - Reset original iptables settings
          and return to clear navigation
 restart - Combines "stop" and "start" options
 change - Changes identity restarting TOR 
 status - Check if AnonSurf is working properly
----[ I2P related features ]----
 starti2p - Start i2p services
 stopi2p - Stop i2p services
```

## Instalação
Este pacote vem com um executor que torna as coisas extremamente fáceis:

```bash
Digitar:
git clone https://github.com/richardg7/anonchange.git

Entrar na pasta:

cd anonchange

E diigitar:

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

<p xmlns:cc="http://creativecommons.org/ns#" >Este trabalho está licenciado sob <a href="http://creativecommons.org/licenses/by-nc-sa/4.0/?ref= selector-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY-NC-SA 4.0<img style="height:22px!important;margin-left:3px ;alinhamento vertical:fundo do texto;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text -fundo;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text -fundo;" src="https://mirrors.creativecommons.org/presskit/icons/nc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text -fundo;" src="https://mirrors.creativecommons.org/presskit/icons/sa.svg?ref=chooser-v1"></a></p>
