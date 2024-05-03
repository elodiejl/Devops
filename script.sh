#!/bin/bash

# Mise à jour des packages existants
sudo apt-get update

# Installation de Git
sudo apt-get install -y git

# Installation de Docker
sudo apt-get install -y docker.io

# Ajouter l'utilisateur actuel au groupe Docker pour éviter d'utiliser sudo pour les commandes Docker
sudo usermod -aG docker $USER

sudo apt-get install -y nodejs npm
git clone https://github.com/johnpapa/node-hello.git  # Remplacez l'URL du dépôt par celui que vous souhaitez cloner
cd node-hello
npm install  # Assurez-vous d'adapter cette commande selon votre projet (ex: yarn install, composer install, etc.)
npm start