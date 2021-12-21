FROM ubuntu:20.04

RUN echo "Baixando atualizações dos repositórios"
RUN apt-get update && apt-get upgrade -y
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata
RUN echo "Instalando NGINX"
RUN apt-get install -y nginx
RUN echo "Instalando PHP7.4"
RUN apt-get install -y php7.4 && apt-get clean
RUN echo "Instalando Módulos do PHP"
RUN apt-get install -y php-pear \
                        php-fpm \
                        php-curl \
                        php-xmlrpc \ 
                        php-mbstring \
                        php-xml

RUN echo "Exportando logs"
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

RUN echo "Limpando lists"
RUN rm -rf /var/lib/apt/lists/*
RUN echo "Validando versão instalada"
RUN php  -v

RUN echo "daemon off;" >> /etc/nginx/nginx.conf
EXPOSE 8080
ENTRYPOINT [“/usr/sbin/nginx”]
CMD [“start”, “-g”]
