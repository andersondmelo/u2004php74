# Ubuntu 2004 com PHP7.4

# Repositório da imagem
https://hub.docker.com/r/andersondmelo/u2004php74

# Download da imagem
docker pull andersondmelo/u2004php74

# Rodando a imagem local
docker run --rm -itdp 8020:80 --name u2004php74 andersondmelo/u2004php74 bash

# Usando a imagem no seu Dockerfile
FROM andersondmelo/u2004php74:latest

# Versões instaladas

DISTRIB_ID=Ubuntu
DISTRIB_RELEASE=20.04
DISTRIB_CODENAME=focal
DISTRIB_DESCRIPTION="Ubuntu 20.04.3 LTS"
NAME="Ubuntu"
VERSION="20.04.3 LTS (Focal Fossa)"
ID=ubuntu
ID_LIKE=debian
PRETTY_NAME="Ubuntu 20.04.3 LTS"
VERSION_ID="20.04"


nginx version: nginx/1.18.0 (Ubuntu)

PHP 7.4.3 (cli) (built: Nov 25 2021 23:16:22) ( NTS )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Zend OPcache v7.4.3, Copyright (c), by Zend Technologies
