<?php

// Pour afficher les erreurs PHP
error_reporting(E_ALL);
ini_set("display_errors", 1);

// Initialisation de Twig
include('include/twig.php');
$twig = init_twig();

// Inclusion de la fonction de connexion
include('include/connexion.php');
$pdo = connexion();

// Validation des données du formulaire
$article_id = $_POST['article_id'];
$name = htmlspecialchars($_POST['name']);
$comment = htmlspecialchars($_POST['comment']);

// Insertion du commentaire dans la nouvelle table
$sql = "INSERT INTO `Nouveau-Commentaire` (id_article, name, comment, datee)
        VALUES (:article_id, :name, :comment, NOW())"; // Utilisation de NOW() pour la date actuelle
$stmt = $pdo->prepare($sql);
$stmt->bindParam(':article_id', $article_id, PDO::PARAM_INT);
$stmt->bindParam(':name', $name, PDO::PARAM_STR);
$stmt->bindParam(':comment', $comment, PDO::PARAM_STR);
$stmt->execute();

// Redirection vers la page des détails de l'article
header("Location: detail1_baumes.php?id=$article_id");
exit();
?>
