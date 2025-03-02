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

// Requête de base pour récupérer les articles de la catégorie "Corps"
$sql = "
    SELECT A.*, M.nom_marque, T.nom_type
    FROM Article A
    JOIN Marque M ON A.id_marque = M.id_marque
    JOIN Type T ON A.id_type = T.id_type
    JOIN Article_Categorie AC ON A.id_article = AC.id_article
    JOIN Categorie C ON AC.id_categorie = C.id_categorie
    WHERE C.nom_categorie = 'Corps'
";

// Initialisation des tableaux pour stocker les conditions de filtrage
$conditions = [];
$params = [];

// Ajout des conditions de filtrage pour la marque
if (!empty($_GET['marque'])) {
    $marqueConditions = [];
    foreach ($_GET['marque'] as $marqueId) {
        $marqueConditions[] = "A.id_marque = ?";
        $params[] = $marqueId;
    }
    $conditions[] = "(" . implode(" OR ", $marqueConditions) . ")";
}

// Ajout des conditions de filtrage pour le type de peau
if (!empty($_GET['type_peau'])) {
    $typePeauConditions = [];
    foreach ($_GET['type_peau'] as $typePeauId) {
        $typePeauConditions[] = "A.id_type = ?";
        $params[] = $typePeauId;
    }
    $conditions[] = "(" . implode(" OR ", $typePeauConditions) . ")";
}

// Si des conditions ont été ajoutées, les concaténer avec des AND
if (!empty($conditions)) {
    $sql .= " AND " . implode(" AND ", $conditions);
}

// Préparation de la requête SQL
$stmt = $pdo->prepare($sql);

// Exécution de la requête SQL avec les paramètres
$stmt->execute($params);

// Récupération des résultats
$articles_corps = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Requête pour récupérer les marques
$marques = select_table($pdo, "SELECT * FROM Marque");

// Requête pour récupérer les types de peau
$types_peau = select_table($pdo, "SELECT * FROM Type");

// Affichage des résultats dans le template Twig
echo $twig->render('liste2_corps.twig', [
    'articles_corps' => $articles_corps,
    'marques' => $marques,
    'types_peau' => $types_peau
]);
?>
