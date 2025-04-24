<?php
// Pour afficher les erreurs PHP
error_reporting(E_ALL);
ini_set("display_errors", 1);

// Initialisation de Twig
include('include/twig.php');
$twig = init_twig();

// Initialisation de la session
session_start();

// Vérifier si un article est ajouté au panier
if(isset($_POST['article_id'])) {
    // Récupérer l'ID de l'article depuis les données postées
    $articleId = $_POST['article_id'];

    // Inclusion de la fonction de connexion
    include('include/connexion.php');
    $pdo = connexion();

    // Préparer la requête SQL pour récupérer le prix, l'image et le nom de l'article
    $query = "SELECT nom_article, image, prix_article FROM Article WHERE id_article = ?";
    $stmt = $pdo->prepare($query);
    $stmt->execute([$articleId]);
    $article = $stmt->fetch(PDO::FETCH_ASSOC);
    
    // Ajouter l'article au panier
    if($article) {
        $_SESSION['panier'][] = $article;
    }
}

// Calculer le total du panier
$total = 0;
if (isset($_SESSION['panier'])) {
    foreach ($_SESSION['panier'] as $article) {
        if(isset($article['prix_article'])) {
            $total += $article['prix_article'];
        }
    }
}

// Rendre le template Twig avec les données des articles et le total
echo $twig->render('ajout-panier.twig', ['articles' => $_SESSION['panier'], 'total' => $total]);
?>
