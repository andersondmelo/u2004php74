FROM ubuntu:20.04

RUN echo "Baixando atualizações dos repositórios"
RUN apt-get update && apt-get upgrade -y
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata
RUN echo "Instalando PHP7.4"
RUN apt-get install -y php7.4
RUN echo "Instalando Módulos do PHP"
RUN apt-get install -y php-pear \
                        php-fpm
RUN echo "Validando versão instalada"
RUN php  -v

