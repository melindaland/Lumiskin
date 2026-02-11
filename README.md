# Lumiskin - Boutique de Skincare en ligne

## Fonctionnalités
- Affichage dynamique des produits (crèmes, masques, baumes, sérums).
- Filtrage par marque et par type de peau.
- Gestion d'un panier d'achat (ajout et suppression).
- Système de commentaires pour chaque article.
- Design entièrement responsive (Mobile, Tablette, Desktop).

## Prérequis
- **PHP** (version 8.1 ou supérieure recommandée).
- **MySQL** ou **MariaDB**.
- **Composer** (pour installer Twig).

## Installation locale

1. **Cloner le projet** :
   ```bash
   git clone https://github.com/melindaland/Lumiskin.git
   cd Lumiskin
   ```

2. **Installer les dépendances** :
   Lancez la commande suivante à la racine du projet pour installer Twig :
   ```bash
   composer install
   ```

3. **Configurer la base de données** :
   - Créez une base de données nommée `lumiskin` (ou le nom de votre choix) dans votre interface de gestion (ex: phpMyAdmin).
   - Importez le fichier `aland_sae203.sql` situé à la racine du projet.
   - Ouvrez le fichier `include/config.php` et renseignez vos identifiants de connexion :
     ```php
     const DB_HOST = 'localhost';
     const DB_NAME = 'votre_nom_de_bdd';
     const DB_LOGIN = 'votre_utilisateur';
     const DB_PASSWORD = 'votre_mot_de_passe';
     ```

4. **Lancer le site** :
   Vous pouvez utiliser le serveur intégré de PHP pour tester rapidement :
   ```bash
   php -S localhost:8000
   ```
   Rendez-vous ensuite sur `http://localhost:8000` dans votre navigateur.
