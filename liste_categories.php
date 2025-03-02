<?php
// Pour les utilisateurs de MAMP (Mac) : force l'affichage des erreurs PHP
error_reporting(E_ALL);
ini_set("display_errors", 1);

// Initialise Twig
include('include/twig.php');
$twig = init_twig();

// Importe la fonction de connexion
include('include/connexion.php');
$pdo = connexion();

// Importe les fonctions pour les requêtes
include('include/select.php');

// Requête pour récupérer tous les articles avec leurs catégories respectives 
$categories = select_table($pdo, '
SELECT A.*, GROUP_CONCAT(C.nom_categorie SEPARATOR ", ") AS categories
FROM Article A
JOIN Article_Categorie AC ON A.id_article = AC.id_article
JOIN Categorie C ON AC.id_categorie = C.id_categorie
GROUP BY A.id_article
');

// Lancement du moteur Twig avec les données
echo $twig->render('liste_categories.twig', [
    'categories' => $categories
]);
?>
