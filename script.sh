#!/bin/bash

# Mise à jour des packages existants
sudo apt-get update

# Installation de Git
sudo apt-get install -y git

# Installation de Docker
sudo apt-get install -y docker.io

# Ajouter l'utilisateur actuel au groupe Docker pour éviter d'utiliser sudo pour les commandes Docker
sudo usermod -aG docker $USER