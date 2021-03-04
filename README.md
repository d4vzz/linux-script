<h1 align="center">
   🤖
</h1>

<p align="center">
  <a href="#instala-pacotes.sh">instala-pacotes</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#organiza-pacotes.sh">organiza-pacotes</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#como executar">Como executar</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#licença">Licença</a>

## instala-pacotes.sh
Instala pacotes e adiciona alguns respositórios, além de configurar alguns ambientes que utilizo (mídia, gráficos, desenvolvimento e descompactadores), além de atualizar e consertar pacotes.

### Instala:
Mesa Driver (PPA), Vivaldi, Discord, Flatpak, Snapd, Stremio, Telegram (Flatpak), Vlc, Visual Studio Code (Snap), Pixelorama, qBittorrent, Python3, Pip, Django, Node JS, NPM, GIT, nano, Vim, jdk 8 e 11, Steam, Neofetch, Synaptic, Microsoft Fonts, ffmpeg, unzip, gzip, p7zip e unrar.

### Remove:
Rhythmbox, Thunderbird, Transmission, Pidgin, Hexchat e Cheese.

## organiza-pacotes.sh
Atualiza e conserta pacotes datados, sem uso ou duplicados, além de limpar a /TMP, lixeira e caches.

## Como executar
Baixe o script desejado, atentando-se a sua distro, localize o arquivo na pasta e então abra um terminal no local, digitando:

```bash
sh nome-do-script.sh
```

ou, rode o script a partir daqui, para isso, baixe:

```bash
sudo apt install curl -y
```
e execute em seguida, dependendo do script escolhido:

```bash
curl -H 'Cache-Control: no-cache' -sSL https://raw.githubusercontent.com/d4vzz/linux-script/master/instala-pacotes.sh | bash
```
```bash
curl -H 'Cache-Control: no-cache' -sSL https://raw.githubusercontent.com/d4vzz/linux-script/master/organiza-pacotes.sh | bash
```

## Licença

Esse projeto está sob a licença GPL-3.0. Veja o arquivo [LICENSE](LICENSE.md) para mais detalhes.
