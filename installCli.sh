#!/bin/bash  
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

echo "Download Completo";

php wp-cli.phar --info

echo "Dando permissão para o cli";

chmod +x wp-cli.phar

echo "movendo o cli para /bin para utliza-lo globalmente";

sudo mv wp-cli.phar /usr/local/bin/wp

echo "Versão do cli:"

wp --info

