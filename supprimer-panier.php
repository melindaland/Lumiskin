<?php
// Pour afficher les erreurs PHP
error_reporting(E_ALL);
ini_set("display_errors", 1);

// Initialisation de Twig
include('include/twig.php');
$twig = init_twig();

// Initialisation de la session
session_start();

// Inclusion de la fonction de connexion
include('include/connexion.php');
$pdo = connexion();

// Inclusion des fonctions pour les requêtes
include('include/select.php');

// Vérifier si un article doit être supprimé du panier
if (isset($_GET['id'])) {
    $articleId = $_GET['id'];
    
    // Vérifier si le panier est défini et est un tableau
    if (isset($_SESSION['panier']) && is_array($_SESSION['panier'])) {
        // Parcourir le panier et supprimer l'article correspondant
        foreach ($_SESSION['panier'] as $index => $article) {
            if ($article['id_article'] == $articleId) {
                unset($_SESSION['panier'][$index]);
                // Réindexer le tableau du panier
                $_SESSION['panier'] = array_values($_SESSION['panier']);
                break;
            }
        }
    }
}

// Rediriger l'utilisateur vers la page du panier
header('Location: ajout-panier.php');
exit();
?>
