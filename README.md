# BileMo


#### Openclassrooms / Projet 7 : Créez un web service exposant une API
[![Maintainability](https://api.codeclimate.com/v1/badges/2805998b4b7421c253c3/maintainability)](https://codeclimate.com/github/jucarre/BileMo/maintainability)

This project is realized with [API Platform](https://api-platform.com/)

## Prerequisites

- PHP 7.1.3 or more

## Installation

1. Copy repository 

        git clone https://github.com/jucarre/BileMo.git

2. Configure BDD connect on `.env`  file

3. Install the dependencies

        composer install
        
4.  Create database

        php bin/console doctrine:database:create
        
5. Migrate database table

        php bin/console doctrine:migrations:migrate
        
6. Load fixtures in database
        
        php bin/console doctrine:fixtures:load

7.  Generate the SSH keys JWTAuthentication and add passphrase key in`.env` file `JWT_PASSPHRASE=Your_key`

        mkdir config/jwt
        openssl genrsa -out config/jwt/private.pem -aes256 4096
        openssl rsa -pubout -in config/jwt/private.pem -out config/jwt/public.pem

You can find the performance tests done with Blackfire and the schema differences of the API in the [Docs](https://github.com/jucarre/BileMo/tree/master/Docs) file
 
