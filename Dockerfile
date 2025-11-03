#usa a imagem de php com apache 
FROM php.8.2-apache
#copia os arquivos do sau aplicação para  diretorio padrão do apache 
COPY . /var/www/html/
#habilita modulos adicionais do  apache(opcional) 
RUN docker-php-ext-install mysql php_mysql
#exponha a porta padrão do apache 
expose 80
