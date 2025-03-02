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

// Inclusion des fonctions pour les requêtes
include('include/select.php');

if (isset($_GET['id'])) {
    // Récupération de l'identifiant de l'article à partir de l'URL
    $article_id = $_GET['id'];

    // Requête SQL pour sélectionner les détails de l'article spécifié
    $sql = "SELECT A.*, M.nom_marque AS marque_article, T.nom_type AS type_article,
            A.prix_article AS prix, A.description_article AS description,
            A.image AS image,
            GROUP_CONCAT(I.nom_ingredient SEPARATOR ', ') AS ingredients
    FROM Article A
    LEFT JOIN Marque M ON A.id_marque = M.id_marque
    LEFT JOIN Type T ON A.id_type = T.id_type
    LEFT JOIN Article_Ingredient AI ON A.id_article = AI.id_article
    LEFT JOIN Ingredient I ON AI.id_ingredient = I.id_ingredient
    WHERE A.id_article = :article_id
    GROUP BY A.id_article, M.nom_marque, T.nom_type, A.prix_article, A.description_article, A.image";

    $stmt = $pdo->prepare($sql);
    $stmt->bindParam(':article_id', $article_id, PDO::PARAM_INT);
    $stmt->execute();
    $article = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($article) {
        // Requête pour récupérer les commentaires associés à l'article depuis la table Commentaire
        $sql_commentaires = "SELECT * FROM `Commentaire` WHERE id_article = :article_id";
        $stmt_commentaires = $pdo->prepare($sql_commentaires);
        $stmt_commentaires->bindParam(':article_id', $article_id, PDO::PARAM_INT);
        $stmt_commentaires->execute();
        $commentaires = $stmt_commentaires->fetchAll(PDO::FETCH_ASSOC);

        // Requête pour récupérer les commentaires associés à l'article depuis la table Nouveau-Commentaire
$sql_nouveau_commentaires = "SELECT * FROM `Nouveau-Commentaire` WHERE id_article = :article_id";
$stmt_nouveau_commentaires = $pdo->prepare($sql_nouveau_commentaires);
$stmt_nouveau_commentaires->bindParam(':article_id', $article_id, PDO::PARAM_INT);
$stmt_nouveau_commentaires->execute();
$nouveau_commentaires = $stmt_nouveau_commentaires->fetchAll(PDO::FETCH_ASSOC);

 $sql_ingredients = "SELECT i.nom_ingredient FROM Ingredient i
                            INNER JOIN Article_Ingredient ai ON i.id_ingredient = ai.id_ingredient
                            WHERE ai.id_article = :article_id";
        $stmt_ingredients = $pdo->prepare($sql_ingredients);
        $stmt_ingredients->bindParam(':article_id', $article_id, PDO::PARAM_INT);
        $stmt_ingredients->execute();
        $ingredients = $stmt_ingredients->fetchAll(PDO::FETCH_COLUMN);

// Passer les données des commentaires récupérés au tableau de données pour Twig



        // Ajouter les commentaires récupérés au tableau de données pour Twig
        $article['commentaires'] = $commentaires;
         $article['ingredients'] = $ingredients;
       $article['nouveau_commentaires'] = $nouveau_commentaires;

        // Lancement de Twig avec les données récupérées
        echo $twig->render('detail3_beauty.twig', [
            'article' => $article
            
        ]);
    } else {
        echo "Article non trouvé.";
    }
} else {
    // Gérer le cas où aucun paramètre d'article n'est présent dans l'URL
    echo "Aucun article sélectionné.";
}
?>
