# BileMo


#### Openclassrooms / Projet 7 : Créez un web service exposant une API
[![Maintainability](https://api.codeclimate.com/v1/badges/2805998b4b7421c253c3/maintainability)](https://codeclimate.com/github/jucarre/BileMo/maintainability)

Ce projet est réalisé avec [API Platform](https://api-platform.com/)

## Pre-requis

- PHP 7.1.3 ou plus

## Installation

1. Copiez le Repository

        git clone https://github.com/jucarre/BileMo.git

2. Configurez la connection à la BDD dans le fichier `.env` 

3. Installez les dépendences 

        composer install
        
4.  Créez la base de donnée 

        php bin/console doctrine:database:create
        
5. Migrez la table

        php bin/console doctrine:migrations:migrate
        
6. Chagez les données fictive dans la base de donnée
        
        php bin/console doctrine:fixtures:load

7. Générez les clés SSH de JWTAuthentication et ajoutez le passphare dans le `.env` `JWT_PASSPHRASE=Votre clé`

        mkdir config/jwt
        openssl genrsa -out config/jwt/private.pem -aes256 4096
        openssl rsa -pubout -in config/jwt/private.pem -out config/jwt/public.pem

Vous pouvez retrouvrer les tests performance fait avec Blackfire et les différences schéma de l'API dans le dossier [Docs](https://github.com/jucarre/BileMo/tree/master/Docs)