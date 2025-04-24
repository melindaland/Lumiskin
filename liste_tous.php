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

// Requête SQL pour récupérer tous les articles
$sql = "
    SELECT DISTINCT A.*, M.nom_marque, T.nom_type
    FROM Article A
    JOIN Marque M ON A.id_marque = M.id_marque
    JOIN Type T ON A.id_type = T.id_type
    JOIN Article_Categorie AC ON A.id_article = AC.id_article
    JOIN Categorie C ON AC.id_categorie = C.id_categorie
";

// Initialisation des tableaux pour stocker les conditions de filtrage
$conditions = [];
$params = [];

// Ajout des conditions de filtrage pour la marque
if (!empty($_GET['marque'])) {
    $marqueConditions = [];
    foreach ($_GET['marque'] as $marqueId) {
        $marqueConditions[] = "M.id_marque = ?";
        $params[] = $marqueId;
    }
    $conditions[] = "(" . implode(" OR ", $marqueConditions) . ")";
}

// Ajout des conditions de filtrage pour le type de peau
if (!empty($_GET['type_peau'])) {
    $typePeauConditions = [];
    foreach ($_GET['type_peau'] as $typePeauId) {
        $typePeauConditions[] = "T.id_type = ?";
        $params[] = $typePeauId;
    }
    $conditions[] = "(" . implode(" OR ", $typePeauConditions) . ")";
}

// Ajout des conditions de filtrage pour la catégorie
$allowed_categories = [1, 2, 3, 4];
if (!empty($_GET['categorie'])) {
    $categorieConditions = [];
    foreach ($_GET['categorie'] as $categorieId) {
        if (in_array($categorieId, $allowed_categories)) {
            $categorieConditions[] = "C.id_categorie = ?";
            $params[] = $categorieId;
        }
    }
    if (!empty($categorieConditions)) {
        $conditions[] = "(" . implode(" OR ", $categorieConditions) . ")";
    }
}

if (!empty($conditions)) {
    $sql .= " AND " . implode(" AND ", $conditions);
}
// Préparation de la requête SQL
$stmt = $pdo->prepare($sql);

// Exécution de la requête SQL avec les paramètres
$stmt->execute($params);

// Récupération des résultats
$articles_tous = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Requête pour récupérer les marques
$query_marques = "SELECT * FROM Marque";
$stmt_marques = $pdo->prepare($query_marques);
$stmt_marques->execute();
$marques = $stmt_marques->fetchAll(PDO::FETCH_ASSOC);

// Requête pour récupérer les types de peau
$query_types_peau = "SELECT * FROM Type";
$stmt_types_peau = $pdo->prepare($query_types_peau);
$stmt_types_peau->execute();
$types_peau = $stmt_types_peau->fetchAll(PDO::FETCH_ASSOC);

// Requête pour récupérer les catégories
$query_categories = "SELECT * FROM Categorie WHERE id_categorie IN (1, 2, 3, 4)";
$stmt_categories = $pdo->prepare($query_categories);
$stmt_categories->execute();
$categories = $stmt_categories->fetchAll(PDO::FETCH_ASSOC);

// Affichage des résultats dans le template Twig
echo $twig->render('liste_tous.twig', [
    'articles_tous' => $articles_tous,
    'marques' => $marques,
    'types_peau' => $types_peau,
    'categories' => $categories // Ajout de la variable 'categories'
]);
?>
