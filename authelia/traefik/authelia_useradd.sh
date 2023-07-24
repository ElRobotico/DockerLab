#!/bin/bash
echo "*************************** CREAZIONE UTENTE ***************************"
read -p "Username: " username
read -p "User Email (Needed for password reset): " email
echo -n "Password (not visible): "
stty -echo
read password
stty echo
echo

passwordhash=$(docker run authelia/authelia:latest authelia hash-password ${password} | sed -e 's/Digest://g')

echo "
    $username:
        password:$passwordhash
        displayname: $username
        email: $email
        groups:
        disabled: false" >> /etc/authelia/authelia_config/users_database.yml

echo "*************************** RIAVVIO AUTHELIA ***************************"
docker restart authelia
echo "********************************* FINE *********************************"