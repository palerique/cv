# Currículo - http://www.sitedoph.com.br/sobre-o-ph

Meu currículo feito com LaTeX. Para facilitar a compilação do arquivo pdf criei uma VM utilizando Vagrant e Puppet. Agora é possível compilar o pdf no próprio windows.

# Para compilar:

    $ vagrant up
    $ vagrant ssh -c 'cd /vagrant/; xelatex cv-completo-colorido.tex; xelatex cv-completo-peb.tex'
    $ vagrant halt

# Crédito:

Feito com base no exemplo disponível em: https://github.com/afriggeri/cv
