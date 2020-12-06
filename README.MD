# instalador facil e com personalização do vim para windows
![imagem](./imgs/tela.png)

*passo a passo para a instalação*

1. abra o PowerShell como adminstrador e insira os comandos abaixo linha a linha
    ````
    cd ~\Desktop
    git clone https://github.com/Eliomar-Julian/vimInstall.git
    cd ./vimInstall
    Set-ExecutionPolicy Unrestricted
    ````
    digite 'S' e rode o script
    ````
    ./install.ps1
    vim C:\Users\$env:USERNAME\vimfiles\autoload\plug.vim
    ````
2. Dentro de seu Vim rode as sequencias de comandos:
    ~~~~
    :runtime %
    :source %
    :PlugInstall
    ~~~~

ótimo se tudo ocorreu bem basta reiniciar seu vim

__Obs:__ para usar seu vim em fullscreen inicialize-o pelo terminal

> cmd "F11" vim 

ou

> powershell "F11" vim
