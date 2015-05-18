# Currículo - http://sitedo.ph/sobre-o-ph

Meu currículo feito com LaTeX.

# Para compilar:

    xelatex cv.tex

# Para preparar o ambiente:

## Instalar o TeXlive

     sudo apt-get install texlive-full

## Instalar as fontes

Instalar as fontes extraindo o arquivo, copiando todas para a pasta de fontes e atualizando a informação:

    sudo mv * /usr/share/fonts
    sudo fc-cache -fv

To facilitate this, when the xetex package is installed (either at initial installation or later), the necessary configuration file is created in 
TEXMFSYSVAR/fonts/conf/texlive-fontconfig.conf.
To set up the TEX Live fonts for system-wide use (assuming you have suitable privileges), proceed as follows:

    Copy the texlive-fontconfig.conf file to /etc/fonts/conf.d/09-texlive.conf.
    Run fc-cache -fsv.

# Crédito:

Feito com base no exemplo disponível em: https://github.com/afriggeri/cv
