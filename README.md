# Projet Terraform

## Présentation des Membres

Ce projet est réalisé par deux membres :

- Elodie Jolo
- Rémy Scherier

## TodoList

Voici la liste des tâches à accomplir pour ce projet :

- [x] Créer une VM sur un cloud public.
- [x] Installer Docker et autres outils nécessaires.
- [x] Installer Git.
- [x] Cloner un repository.
- [x] Lancer l'application.
- [ ] Ouvrir les ports de la VM pour permettre l'accès à l'application depuis l'extérieur.
- [ ] Rédiger une documentation sur les variables à configurer dans Terraform.

## Processus de Lancement du Projet

Voici les étapes à suivre pour lancer le projet :

1. **Cloner le Référentiel :** Clonez ce référentiel sur votre machine locale en utilisant la commande suivante :
```sh
git clone <URL_du_referentiel>
```
2. **Configurer Terraform :** Assurez-vous d'avoir Terraform installé sur votre machine. Vous pouvez trouver les instructions d'installation sur le site officiel de Terraform.

3. **Initialiser Terraform :** Dans le répertoire du projet, exécutez la commande suivante pour initialiser Terraform :
```sh
terraform init
```
4. **Configurer les Variables :** Utilisez le fichier `terraform.tfvars` ou définissez les variables d'environnement nécessaires pour configurer Terraform selon vos besoins.

5. **Appliquer les Changements :** Exécutez la commande suivante pour voir les changements planifiés par Terraform :
```sh
terraform plan
```
Si tout semble correct, appliquez les changements en utilisant la commande :
```sh
terraform apply -auto-approve
```
6. **Vérifier l'Application :** Une fois le déploiement terminé, vérifiez que l'application fonctionne comme prévu en accédant à l'adresse IP de la machine virtuelle.

7. **Détruire l'Infrastructure :** Après avoir terminé vos tests, détruisez l'infrastructure en utilisant la commande suivante :
```sh
terraform destroy -auto-approve
```

Assurez-vous d'être certain de vouloir détruire l'infrastructure, car cette action est irréversible.

## Variables à Configurer

Avant de lancer le projet, vous devez configurer certaines variables dans Terraform. Voici les variables à définir :

- `resource_group_location`: Indiquez la région dans laquelle vous souhaitez déployer votre ressource. Par exemple : `West Europe`.
- `resource_group_name_prefix`: Précisez le préfixe du nom du groupe de ressources à créer. Par exemple : `projet_duo`.
- `username`: Spécifiez le nom d'utilisateur à utiliser pour la connexion à la machine virtuelle. Par exemple : `userDuo`.

Assurez-vous de définir ces variables selon vos besoins avant de lancer Terraform.

## Connexion à Azure

Pour que Terraform puisse se connecter à votre compte Azure et déployer l'infrastructure, vous devez fournir vos informations d'identification Azure. Vous pouvez configurer ces informations en utilisant les méthodes suivantes :

- **Azure CLI**: Exécutez `az login` dans votre terminal pour vous connecter à Azure, puis Terraform utilisera les informations d'identification de votre session Azure CLI.
- **Variables d'environnement**: Définissez les variables d'environnement `ARM_CLIENT_ID`, `ARM_CLIENT_SECRET`, `ARM_SUBSCRIPTION_ID` et `ARM_TENANT_ID` avec vos informations d'identification Azure.


Ce README fournit un aperçu du projet ainsi que des instructions pour démarrer et utiliser l'infrastructure Terraform. N'hésitez pas à le personnaliser en fonction des besoins spécifiques de votre projet.
