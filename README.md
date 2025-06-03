# AnonChange

O **AnonChange** é um utilitário interativo para automatizar a troca de IP usando o AnonSurf, compatível com Kali Linux e ParrotSec. Ele facilita a instalação do AnonSurf, inicialização e troca periódica de identidade via Tor, tornando o processo mais acessível para usuários de sistemas baseados em Debian.

> **Atenção:** Desenvolvido para fins acadêmicos e educacionais.

![AnonChange](https://github.com/richardg7/anonchange/blob/main/anonchange.png?raw=true)

---

## Recursos

- Instalação automática do AnonSurf (Kali Linux)
- Inicialização do AnonSurf (ParrotSec)
- Troca automática de IP/identidade Tor em intervalos definidos pelo usuário
- Detecção e instalação automática do Tor (com orientações para resolução de problemas de chave pública e dependências)
- Interface amigável e interativa em shell script

---

## Pré-requisitos

- Sistema baseado em Debian (Kali Linux ou ParrotSec recomendado)
- Permissões de root para instalação de dependências

---

## Como usar este repo

Este repo contém as fontes dos pacotes AnonChange para o AnonSurf combinados em um.

A maneira mais fácil de fazer isso funcionar é apenas executar o instalador. Veja a seção de instalação para mais informações.

NOTE: Isso pode funcionar com qualquer sistema debian / ubuntu, mas só foi testado para funcionar em um sistema ParrotSec e amd64 kali-rolling.

---

## Instalação

Clone o repositório e execute o script:

```bash
git clone https://github.com/richardg7/anonchange.git
cd anonchange
sudo bash anonchange.sh
```

> **Importante:** Execute sempre como root (`sudo bash anonchange.sh`) para garantir que todas as dependências possam ser instaladas automaticamente.

---

## Uso

Ao rodar o script, você verá um menu interativo:

```
1) Mudar o IP automaticamente
2) Instalar/Iniciar o AnonSurf
3) Sair
```

### Opções do menu

- **Mudar o IP automaticamente:**  
  Escolha sua distribuição, defina o intervalo em segundos (mínimo 10) e o script trocará sua identidade Tor periodicamente usando o AnonSurf.

- **Instalar/Iniciar o AnonSurf:**  
  - No Kali Linux, instala o AnonSurf a partir do repositório [kali-anonsurf](https://github.com/richardg7/kali-anonsurf).
  - No ParrotSec, apenas inicializa o serviço AnonSurf.

- **Sair:**  
  Encerra o script.

---

## Resolução de Problemas

Se ocorrerem erros de chave pública ou dependências quebradas durante a instalação do Tor, siga as instruções exibidas pelo próprio script ou execute manualmente:

```bash
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ED65462EC8D5E4C5
sudo apt update
sudo apt --fix-broken install
sudo apt install -y tor
```

Se o serviço Tor não iniciar automaticamente, tente:

```bash
sudo systemctl start tor
# ou
sudo service tor start
```

---

## Observações

- O script foi testado em Kali Linux e ParrotSec (amd64).
- Para máxima compatibilidade, mantenha seu sistema atualizado.
- O uso do AnonSurf e do Tor não garante anonimato absoluto. Use com responsabilidade.

---

### Pandora
O Pandora substitui automaticamente a RAM quando o sistema é desligado. O Pandora também pode ser executado manualmente:

```bash
pandora bomb
```

---

## Licença

Este projeto está licenciado sob [CC BY-NC-SA 4.0](http://creativecommons.org/licenses/by-nc-sa/4.0/?ref=chooser-v1).

---

### 👨‍💻 Author

Developed by Richard Guedes - Cyber ​​Defense Institute (IDCiber) – [idciber.org](https://idciber.org)

---
[AnonChange](https://github.com/richardg7/sso_login) by [Richard Guedes](https://www.linkedin.com/in/richard-guedes/) is licensed under [Creative Commons Attribution-ShareAlike 4.0 International]<p xmlns:cc="http://creativecommons.org/ns#" >This work is licensed under <a href="http://creativecommons.org/licenses/by-nc-sa/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY-NC-SA 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/nc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/sa.svg?ref=chooser-v1"></a></p>
