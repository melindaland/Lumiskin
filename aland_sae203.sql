-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : dim. 02 juin 2024 à 16:13
-- Version du serveur : 10.3.39-MariaDB-0+deb10u2
-- Version de PHP : 8.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `aland_sae203`
--

-- --------------------------------------------------------

--
-- Structure de la table `Article`
--

CREATE TABLE `Article` (
  `id_article` int(11) NOT NULL,
  `nom_article` varchar(255) NOT NULL,
  `description_article` text NOT NULL,
  `prix_article` float(10,2) NOT NULL,
  `id_marque` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Article`
--

INSERT INTO `Article` (`id_article`, `nom_article`, `description_article`, `prix_article`, `id_marque`, `id_type`, `image`) VALUES
(1, 'Crème réparatrice Beurre de Karité', 'Enrichie en beurre de karité, connu pour ses propriétés hydratantes et apaisantes, cette crème nourrit votre peau en profondeur, la laissant souple et revitalisée.\r\nAssocié à d\'autres ingrédients naturels comme la vitamine E, ce soin offre une hydratation longue durée et une protection contre les agressions extérieures.\r\n\r\nUtilisée régulièrement, notre la Crème réparatrice au Beurre de Karité aide à réduire les signes de sécheresse cutanée, à apaiser les irritations et à restaurer l\'éclat naturel de votre peau.', 15.80, 1, 1, 'images/imageB1.png'),
(2, 'Crème hydratante Aloe Vera', 'La Crème hydratante Aloe Vera est une solution parfaite pour tous ceux qui recherchent une hydratation profonde et des bienfaits naturels pour leur peau. \r\n\r\nFormulée avec des ingrédients de haute qualité, cette crème combine l\'efficacité de l\'aloe vera et de la vitamine C pour offrir une expérience de soin inégalée. La vitamine C protège la peau contre les dommages environnementaux, favorisant une apparence plus jeune et plus saine. Ainsi, l\'utilisation régulière de cette crème contribue à un teint plus lumineux et uniforme.', 16.20, 1, 1, 'images/imageB2.png'),
(3, 'Crème Anti-Âge Intensive', 'La Crème Anti-Âge Intensive est l\'alliée idéale pour toutes celles et ceux qui souhaitent combattre les signes du vieillissement et retrouver une peau plus jeune, plus ferme et plus saine ! \r\n\r\nGrâce à la puissance du café et du rétinol, cette crème offre une solution complète et efficace pour une peau visiblement transformée. \r\nGrâce au rétinol, cette crème combat efficacement les signes visibles du vieillissement en réduisant la profondeur des rides et en lissant les ridules. ', 21.90, 1, 2, 'images/imageB3.png'),
(4, 'Crème hydratante à l\'extrait de Grenade', 'La grenade est reconnue depuis des siècles pour ses propriétés anti-âge et régénérantes. Riche en antioxydants puissants, tels que les polyphénols et la vitamine E, l\'extrait de grenade aide à protéger la peau des dommages causés par les radicaux libres, tout en favorisant le renouvellement cellulaire et en améliorant l\'élasticité de la peau. \r\n\r\nAppliquez généreusement la Crème hydratante à l\'Extrait de Grenade sur une peau propre et sèche matin et soir. ', 20.30, 2, 2, 'images/imageF4.png'),
(5, 'Crème apaisante à la Lavande', 'La Crème Apaisante à la Lavande est bien plus qu\'un simple hydratant. C\'est un véritable rituel de détente et de soin pour la peau et les sens, offrant une expérience sensorielle apaisante et des bienfaits hydratants et réparateurs. \r\n\r\nPrenez le temps de vous détendre et de prendre soin de vous avec cette crème et découvrez une peau plus douce, plus calme et plus confortable jour après jour. Appliquez généreusement la crème  sur une peau propre et sèche, en massant doucement jusqu\'à absorption complète. Utilisez matin et soir, ou selon les besoins, pour une peau douce, apaisée et revitalisée.', 29.20, 2, 3, 'images/imageF5.png'),
(6, 'Crème apaisante au Citron', 'Grâce à ses propriétés éclaircissantes, le citron aide à réduire les taches sombres, les irrégularités de pigmentation et les signes de fatigue, laissant la peau visiblement plus lumineuse et plus radieuse. L\'arôme vif et citronné de la crème stimule les sens  offrant une expérience sensorielle rafraîchissante et énergisante à chaque application.\r\n\r\nAppliquez généreusement la Crème Apaisante au Citron sur une peau propre et sèche, en massant doucement pour un teint radieux.', 18.60, 2, 3, 'images/imageF6.png'),
(7, 'Crème hydratante à l\'Acide Hyaluronique', 'Grâce à sa formule enrichie en acide hyaluronique, cette crème offre une hydratation intense et durable, laissant la peau douce, souple et parfaitement hydratée tout au long de la journée. L\'acide hyaluronique aide à lisser la surface de la peau, réduisant ainsi l\'apparence des rides et des ridules et offrant un teint visiblement plus lisse, plus ferme et plus jeune. \r\n\r\nEn hydratant la peau en profondeur et en stimulant le renouvellement cellulaire, cette crème aide à révéler un teint plus uniforme, plus lumineux et plus radieux, pour une apparence jeune et éclatante.', 33.60, 3, 4, 'images/imageS7.png'),
(8, 'Crème réparatrice à la vitamine E', 'La Crème Réparatrice à la Vitamine E est le secret d\'une peau nourrie, réparée et visiblement revitalisée. Enrichie en vitamine E et aux fruits rouges, cette crème offre une hydratation intense, une protection antioxydante et une action régénérante pour une peau éclatante de santé et un teint resplendissant. Découvrez le pouvoir de la réparation cutanée avec cette crème luxueuse et retrouvez une peau plus douce, plus lisse et plus lumineuse jour après jour.\r\n\r\nGrâce à ses propriétés régénérantes, la vitamine E aide à réparer les dommages cutanés et à restaurer la barrière cutanée, pour une peau plus résistante, plus élastique et plus saine.', 39.00, 3, 4, 'images/imageS8.png'),
(9, 'Masque hydratant Aloe Vera', 'Le masque est formulé avec une concentration élevée d\'Aloe Vera frais, préservant ainsi toutes ses propriétés bénéfiques pour la peau. En l\'appliquant régulièrement, vous donnerez une seconde vie à votre peau.\r\n\r\nVotre peau retrouvera son élasticité et sa souplesse naturelle grâce à une hydratation en profondeur qui dure toute la journée et les rougeurs seront apaisées.\r\nUtiliser ce masque 2 à 3 fois par semaine pour obtenir des résultats rapidement.', 22.00, 1, 1, 'images/imageB9.png'),
(10, 'Masque purifiant Argile Verte', 'L\'argile verte est un trésor de la nature connu depuis des siècles pour ses propriétés bénéfiques pour la peau. Enrichie en minéraux essentiels tels que le silicium, le magnésium et le calcium, l\'argile verte offre une multitude de bienfaits, notamment pour purifier en profondeur. \r\nGrâce à ses propriétés absorbantes, l\'argile verte élimine efficacement les impuretés, les toxines et l\'excès de sébum de la peau, la laissant fraîche et propre.\r\n\r\nOffrez à votre peau un véritable bain de pureté et de fraîcheur avec notre Masque à l\'Argile Verte. ', 25.00, 1, 1, 'images/imageB10.png'),
(11, 'Masque exfoliant au Charbon', 'Notre masque combine les pouvoirs purifiants du charbon actif avec les bienfaits exfoliants des agents naturels tels les particules de noix de coco, pour une action doublement efficace. En l\'utilisant régulièrement, vous pouvez vous attendre à une peau purifiée en profondeur.\r\n\r\nLes impuretés, les toxines et les excès de sébum sont éliminés, laissant votre peau fraîche et parfaitement nette. Grâce à ses propriétés absorbantes, le charbon aide à déloger les impuretés et les cellules mortes qui obstruent les pores, aidant ainsi à prévenir l\'apparition des imperfections.', 23.00, 1, 2, 'images/imageB11.png'),
(12, 'Masque exfoliant à la Noix de Coco', 'Plongez dans une expérience tropicale avec notre masque à la noix de coco, un véritable délice pour votre peau. Enrichi en extrait naturel de noix de coco, ce masque exfoliant vous transporte instantanément sous les palmiers, offrant une sensation de fraîcheur et d\'hydratation.\r\n\r\nLa noix de coco, riche en acides aminés et en vitamines, nourrit votre peau en profondeur tout en lui apportant une hydratation intense. Sa texture crémeuse et onctueuse glisse délicatement sur votre peau, la laissant douce, souple et éclatante de santé.\r\n\r\n', 24.90, 2, 2, 'images/imageF12.png'),
(13, 'Masque nourrissant à l\'Avocat', 'Le masque nourrissant à l\'avocat, une véritable potion de nutrition pour votre peau. L\'avocat, riche en acides gras essentiels, en vitamines et en antioxydants, nourrit intensément la peau en lui apportant une hydratation profonde et durable. Sa texture crémeuse et onctueuse enveloppe votre peau d\'un voile de douceur, la laissant revitalisée et régénérée.\r\n\r\nCe masque est formulé pour aider à apaiser et à réparer les peaux sèches, abîmées ou irritées. Grâce à ses propriétés régénérantes, il aide à restaurer l\'élasticité de la peau et à atténuer les signes de fatigue et de stress.', 19.50, 2, 3, 'images/imageF13.png'),
(14, 'Masque antioxydant Fruits Rouges ', 'Plongez dans une expérience rafraîchissante avec notre masque antioxydant aux fruits rouges, un véritable cocktail de vitalité pour votre peau. Enrichi en extraits naturels de fruits rouges tels que les baies, les cerises et les fraises, ce masque regorge d\'antioxydants puissants qui aident à protéger la peau contre les dommages causés par les radicaux libres et à prévenir le vieillissement prématuré.\r\n\r\nCe masque antioxydant est un véritable booster d\'éclat qui revitalise instantanément la peau fatiguée et terne. Appliquez-le généreusement sur votre visage et détendez-vous pendant que ses bienfaits nourrissants et régénérants font leur magie.', 31.80, 2, 3, 'images/imageF14.png'),
(15, 'Masque raffermissant à la Caféine', 'Le masque raffermissant à la caféine est conçu pour réveiller et tonifier votre peau en un instant. Enrichi en caféine, ce masque offre une sensation de fraîcheur revigorante tout en stimulant la micro-circulation cutanée pour une peau visiblement plus ferme et tonifiée.\r\n\r\nLa caféine, reconnue pour ses propriétés énergisantes, aide à réduire l\'apparence des signes de fatigue et de relâchement cutané, laissant votre peau plus lisse, plus ferme et plus lumineuse. Elle agit également comme un puissant antioxydant, protégeant la peau contre les dommages environnementaux.', 18.90, 3, 4, 'images/imageS15.png'),
(16, 'Masque réparateur au Rétinol', 'Offrez à votre peau un traitement régénérant avec notre masque réparateur au Rétinol. Infusé de rétinol, ce masque aide à réduire l\'apparence des rides et des ridules, tout en favorisant le renouvellement cellulaire pour une peau visiblement plus lisse et plus jeune. Offrez à votre peau un coup de jeunesse revitalisant avec notre masque au rétinol, pour une peau éclatante de jeunesse et de vitalité !', 17.70, 3, 4, 'images/imageS16.png'),
(17, 'Baume régénérant Rétinol', 'Nourrissez votre peau en profondeur avec notre baume régénérant au Rétinol. \r\n\r\nEnrichi en puissant Rétinol, ce baume agit efficacement pour réduire l\'apparence des rides et des ridules, tout en favorisant le renouvellement cellulaire pour une peau visiblement plus lisse et plus jeune. Sa formule riche et hydratante pénètre en profondeur, laissant votre peau douce, souple et revitalisée. ', 35.10, 1, 1, 'images/imageB17.png'),
(18, 'Baume revitalisant à la Lavande', 'Plongez dans une oasis de calme et de détente avec notre baume revitalisant à la lavande. Infusé avec l\'essence apaisante de la lavande, ce baume offre une expérience sensorielle luxueuse tout en revitalisant votre peau. \r\n\r\nSa formule nourrissante et hydratante pénètre profondément pour apaiser et régénérer la peau, laissant une sensation de douceur et de fraîcheur. L\'arôme relaxant de la lavande vous enveloppe dans un nuage de sérénité, vous permettant de vous évader du stress quotidien et de vous offrir un moment de bien-être.', 12.90, 1, 1, 'images/imageB18.png'),
(19, 'Baume réparateur à la Mangue', 'Plongez dans un monde de douceur tropicale avec notre baume réparateur à la mangue. Infusé de l\'exotisme ensoleillé de la mangue, ce baume regorge de bienfaits réparateurs pour votre peau. Sa formule riche et nourrissante hydrate en profondeur, aidant à restaurer la souplesse et l\'élasticité de la peau. \r\n\r\nLa mangue, riche en antioxydants et en vitamines, aide à protéger la peau des agressions extérieures et à stimuler le renouvellement cellulaire pour une peau plus lisse et plus éclatante. Enveloppez-vous de l\'arôme sucré et envoûtant de la mangue, et laissez-vous transporter vers des rivages exotiques où votre peau est choyée et régénérée.', 28.20, 1, 2, 'images/imageB19.png'),
(20, 'Baume réparateur aux Fruits Rouges ', 'Infusé de l\'énergie vibrante des baies juteuses, ce baume offre une hydratation intense et une réparation profonde pour votre peau. Sa texture onctueuse pénètre rapidement pour hydrater en profondeur, tandis que son parfum délicieusement fruité éveille les sens et offre une véritable évasion sensorielle. \r\n\r\nOffrez à votre peau un traitement régénérant avec notre baume réparateur aux Fruits Rouges, et découvrez une peau éclatante et en bonne santé.', 30.99, 2, 2, 'images/imageF20.png'),
(21, 'Baume nourrissant au Beurre de Karité', 'Dites adieu à la peau sèche et rugueuse avec notre baume nourrissant au Beurre de Karité. Formulé avec l\'ingrédient miracle du karité, ce baume offre une hydratation intense et une nutrition profonde pour votre peau. \r\n\r\nLe beurre de karité est riche en acides gras essentiels et en vitamines, ce qui en fait un puissant agent hydratant et réparateur. Que ce soit pour apaiser les zones sèches ou hydrater les mains abîmées, notre baume au Beurre de Karité est un indispensable de votre routine de soin.', 28.00, 2, 3, 'images/imageF21.png'),
(22, 'Baume nourrissant à la Noix de Coco', 'Le nouveau chouchou de la gamme tropicale : ce baume nourrissant à la Noix de Coco ! Infusé de l\'extrait exotique de noix de coco, ce baume est un véritable délice pour la peau. La noix de coco est réputée pour ses propriétés hydratantes et nourrissantes.\r\n\r\nNotre formule unique pénètre rapidement dans la peau, la laissant douce, souple et délicieusement parfumée. Que vous l\'utilisiez pour hydrater les zones sèches, apaiser les irritations cutanées ou même pour offrir un massage relaxant, ce baume à la Noix de Coco est un véritable incontournable de votre routine de soin.\r\n', 14.00, 2, 3, 'images/imageF22.png'),
(23, 'Baume régénérant au Citron vert', 'Enrichi en extrait naturel de citron vert, ce baume apporte une sensation de fraîcheur revitalisante à votre peau. Le citron vert est réputé pour ses propriétés tonifiantes et régénérantes, aidant à revitaliser la peau terne et fatiguée.\r\n\r\nLa formule légère et non grasse pénètre rapidement dans la peau, offrant une hydratation intense tout en laissant une sensation de fraîcheur durable. \r\nLaissez-vous emporter par le parfum rafraîchissant et vivifiant du citron vert.', 20.05, 3, 4, 'images/imageS23.png'),
(24, 'Baume protecteur vitamine C', 'Découvrez le baume protecteur à la vitamine C, une formule puissante pour protéger et revitaliser votre peau au quotidien. Enrichi en vitamine C, ce baume offre une protection efficace contre les agressions extérieures tout en stimulant le renouvellement cellulaire pour une peau éclatante de santé.\r\n\r\nLa vitamine C, connue pour ses propriétés antioxydantes, aide à neutraliser les radicaux libres responsables du vieillissement cutané prématuré. Elle aide également à réduire l\'apparence des taches pigmentaires et des imperfections.\r\nUtilisez notre baume protecteur à la vitamine C quotidiennement pour une peau  mieux protégée contre les signes du vieillissement.', 19.99, 3, 4, 'images/imageS24.png'),
(25, 'Sérum réparateur concentré de vitamine C', 'Plongez dans un monde de régénération et de revitalisation avec notre sérum réparateur à la vitamine C. \r\n\r\nLa vitamine C, ingrédient star de notre sérum, est réputée pour ses propriétés antioxydantes qui aident à réduire les dommages causés par les agressions extérieures telles que la pollution et les rayons UV. \r\nEn favorisant la production de collagène, elle contribue également à améliorer l\'élasticité de la peau pour une peau visiblement plus lisse.\r\n', 26.00, 1, 1, 'images/imageB25.png'),
(26, 'Sérum anti-imperfection à l\'Acide Hyaluronique', 'Plongez dans une nouvelle ère de soin de la peau avec notre sérum anti-imperfections à l\'acide hyaluronique. \r\nL\'acide hyaluronique, ingrédient vedette de notre sérum, agit comme un véritable aimant à hydratation, attirant et retenant l\'eau dans les couches profondes de la peau pour une hydratation longue durée. \r\n\r\nNotre formule légère et non grasse est enrichie en extraits de plantes et en ingrédients apaisants qui aident à calmer les rougeurs et les irritations, tout en régulant la production de sébum pour une peau plus équilibrée et moins sujette aux brillances.\r\n\r\nUtilisé quotidiennement, notre sérum anti-imperfections à l\'acide hyaluronique vous aidera à retrouver une peau claire, nette et éclatante de santé. Redécouvrez la confiance en votre peau et dévoilez un teint visiblement plus lisse, plus uniforme et sans imperfections avec notre sérum à l\'acide hyaluronique.', 11.80, 1, 1, 'images/imageB26.png'),
(27, 'Sérum raffermissant à la Rose', 'Découvrez la quintessence du soin raffermissant avec notre sérum à la rose, une formule luxueuse qui redéfinit la fermeté et l’élasticité de votre peau. Ce sérum raffermissant est spécialement conçu pour revitaliser et tonifier les peaux fatiguées, apportant une sensation de fraîcheur.\r\n\r\nL\'ajout d\'extraits botaniques apaisants, tels que l\'aloe vera et la camomille, aide à calmer les irritations et à réduire les rougeurs, assurant une peau douce et confortable tout au long de la journée.', 25.90, 1, 2, 'images/imageB27.png'),
(28, 'Sérum hydratant Aloe Vera', 'L\'ingrédient phare de ce sérum, l\'Aloe Vera, est réputé pour ses extraordinaires propriétés hydratantes et apaisantes. Riche en vitamines, minéraux et acides aminés, l\'aloe vera pénètre rapidement dans la peau, procurant une hydratation immédiate et durable tout en apaisant les irritations et les rougeurs.\r\n\r\nEn complément de l\'aloe vera, ce sérum contient de l\'acide hyaluronique, un puissant agent hydratant capable de retenir jusqu\'à 1000 fois son poids en eau. L\'acide hyaluronique aide à repulper la peau, à réduire l\'apparence des ridules et à améliorer la texture globale de l\'épiderme, offrant une peau plus lisse et plus ferme.', 18.60, 2, 2, 'images/imageF28.png'),
(29, 'Sérum raffermissant à la Grenade', 'Le secret de ce sérum réside dans l\'extrait de grenade, un ingrédient puissant et riche en antioxydants. La grenade est célèbre pour ses propriétés anti-âge, grâce à sa haute teneur en vitamine C et en polyphénols. \r\n\r\nCes composés protègent la peau des dommages causés par les radicaux libres, tout en stimulant la production de collagène, essentiel pour maintenir la fermeté et l\'élasticité de la peau. En renforçant la structure de la peau, l\'extrait de grenade aide à réduire l\'apparence des rides et des ridules, offrant un teint plus lisse et plus uniforme.', 11.90, 2, 3, 'images/imageF29.png'),
(30, 'Sérum raffermissant au Citron', 'Le citron, ingrédient clé de ce sérum, est riche en vitamine C, connue pour ses propriétés antioxydantes et son pouvoir éclaircissant. La vitamine C aide à neutraliser les radicaux libres responsables du vieillissement prématuré de la peau, tout en stimulant la production de collagène. En augmentant la production de collagène, la peau devient plus ferme, plus élastique et les rides sont visiblement atténuées. \r\n\r\nDe plus, la vitamine C contribue à uniformiser le teint en réduisant les taches pigmentaires et en apportant une luminosité naturelle à la peau.', 17.95, 2, 3, 'images/imageF30.png'),
(31, 'Sérum éclaircissant à la Rose ', 'Le principal ingrédient de ce sérum est l\'extrait de rose, riche en vitamines, antioxydants et minéraux. L\'extrait de rose est célèbre pour ses propriétés apaisantes et hydratantes. Il aide à calmer les irritations, à réduire les rougeurs et à équilibrer le teint. Les antioxydants présents dans la rose neutralisent les radicaux libres, protégeant la peau contre les dommages environnementaux et le vieillissement prématuré.\r\n\r\nLe sérum contient de la vitamine C, un puissant antioxydant reconnu pour sa capacité à illuminer le teint et à réduire les taches pigmentaires. L\'utilisation régulière de la vitamine C aide à uniformiser le teint et à révéler une peau plus lumineuse et éclatante.', 16.30, 3, 4, 'images/imageS31.png'),
(32, 'Sérum à l\'acide Hyaluronique', 'Le sérum contient une combinaison de différents poids moléculaires d\'acide hyaluronique pour pénétrer les différentes couches de la peau. L\'acide hyaluronique à faible poids moléculaire pénètre profondément dans la peau pour une hydratation intense, tandis que l\'acide hyaluronique à haut poids moléculaire forme une couche protectrice à la surface de la peau, empêchant la perte d\'eau et apportant une hydratation immédiate.\r\n\r\nAvec une utilisation régulière, vous pourrez profiter d\'une peau douce, lisse et parfaitement hydratée, tout au long de la journée.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 20.05, 3, 4, 'images/imageS32.png');

-- --------------------------------------------------------

--
-- Structure de la table `Article_Categorie`
--

CREATE TABLE `Article_Categorie` (
  `id_article_categorie` int(11) NOT NULL,
  `id_article` int(11) NOT NULL,
  `id_categorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Article_Categorie`
--

INSERT INTO `Article_Categorie` (`id_article_categorie`, `id_article`, `id_categorie`) VALUES
(1, 1, 1),
(2, 1, 6),
(3, 2, 1),
(4, 2, 5),
(5, 3, 1),
(6, 3, 7),
(7, 4, 1),
(8, 4, 5),
(9, 5, 1),
(10, 5, 7),
(11, 6, 1),
(12, 6, 6),
(13, 7, 1),
(14, 7, 7),
(15, 8, 1),
(16, 8, 5),
(17, 9, 2),
(18, 9, 7),
(19, 10, 2),
(20, 10, 5),
(21, 11, 2),
(22, 11, 6),
(23, 12, 2),
(24, 12, 7),
(25, 13, 2),
(26, 13, 5),
(27, 14, 2),
(28, 14, 6),
(29, 15, 2),
(30, 15, 5),
(31, 16, 2),
(32, 16, 7),
(33, 17, 3),
(34, 17, 5),
(35, 18, 3),
(36, 18, 6),
(37, 19, 3),
(38, 19, 7),
(39, 20, 3),
(40, 20, 7),
(41, 21, 3),
(42, 21, 6),
(43, 22, 3),
(44, 22, 5),
(45, 23, 3),
(46, 23, 5),
(47, 24, 3),
(48, 24, 7),
(49, 25, 4),
(50, 25, 6),
(51, 26, 4),
(52, 26, 7),
(53, 27, 4),
(54, 27, 7),
(55, 28, 4),
(56, 28, 6),
(57, 29, 4),
(58, 29, 6),
(59, 30, 4),
(60, 30, 5),
(61, 31, 4),
(62, 31, 6),
(63, 32, 4),
(64, 32, 5);

-- --------------------------------------------------------

--
-- Structure de la table `Article_Ingredient`
--

CREATE TABLE `Article_Ingredient` (
  `id_article_ingredient` int(11) NOT NULL,
  `id_article` int(11) NOT NULL,
  `id_ingredient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Article_Ingredient`
--

INSERT INTO `Article_Ingredient` (`id_article_ingredient`, `id_article`, `id_ingredient`) VALUES
(1, 1, 2),
(2, 1, 8),
(3, 2, 3),
(4, 2, 17),
(5, 3, 15),
(6, 3, 14),
(7, 4, 8),
(8, 4, 4),
(9, 5, 5),
(10, 5, 7),
(11, 6, 1),
(12, 6, 17),
(13, 7, 7),
(14, 7, 12),
(15, 8, 8),
(16, 8, 13),
(17, 9, 3),
(18, 9, 11),
(19, 10, 9),
(20, 10, 13),
(21, 11, 10),
(22, 11, 11),
(23, 12, 11),
(24, 12, 17),
(25, 13, 12),
(26, 13, 7),
(27, 14, 13),
(28, 14, 14),
(29, 15, 14),
(30, 15, 6),
(31, 16, 15),
(32, 16, 6),
(33, 17, 15),
(34, 17, 7),
(35, 18, 5),
(36, 18, 18),
(37, 19, 16),
(38, 19, 11),
(39, 20, 13),
(40, 20, 7),
(41, 21, 2),
(42, 21, 8),
(43, 22, 11),
(44, 22, 3),
(45, 23, 1),
(46, 23, 17),
(47, 24, 17),
(48, 24, 4),
(49, 25, 17),
(50, 25, 19),
(51, 26, 7),
(52, 26, 3),
(53, 27, 6),
(54, 27, 18),
(55, 28, 7),
(56, 28, 3),
(57, 29, 4),
(58, 29, 17),
(59, 30, 17),
(60, 30, 19),
(61, 31, 18),
(62, 31, 7),
(63, 32, 7),
(64, 32, 6);

-- --------------------------------------------------------

--
-- Structure de la table `Categorie`
--

CREATE TABLE `Categorie` (
  `id_categorie` int(11) NOT NULL,
  `nom_categorie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Categorie`
--

INSERT INTO `Categorie` (`id_categorie`, `nom_categorie`) VALUES
(1, 'Crèmes'),
(2, 'Masques'),
(3, 'Baumes'),
(4, 'Sérums'),
(5, 'Visage'),
(6, 'Corps'),
(7, 'Mains');

-- --------------------------------------------------------

--
-- Structure de la table `Commentaire`
--

CREATE TABLE `Commentaire` (
  `id_commentaire` int(11) NOT NULL,
  `id_article` int(11) NOT NULL,
  `utilisateur` varchar(255) NOT NULL,
  `commentaire` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Commentaire`
--

INSERT INTO `Commentaire` (`id_commentaire`, `id_article`, `utilisateur`, `commentaire`, `date`) VALUES
(1, 1, 'Manon', 'Cela fait plus de 3 ans que j\'utilise cette crème et ma peau revit !!', '2024-05-13 16:15:05'),
(2, 1, 'Sophie', 'Je viens de l’acheter un peu par hasard et je suis bluffée. La crème est parfaitement hydratante pour ma peau.', '2023-10-25 11:48:59'),
(3, 2, 'Justine', 'Je l\'utilise régulièrement, très bon produit ❤️ ', '2023-10-24 05:35:14'),
(4, 2, 'Yasmine', 'Je l\'ai acheté aujourd\'hui, hâte de la tester !', '2023-10-23 02:32:27'),
(5, 3, 'Luca', 'Je l\'ai testé et je valide.', '2023-09-21 05:56:08'),
(6, 3, 'Shaïna', 'J\'utilise ce produit en ce moment et j\'attend de voir les résultats sur ma peau.', '2024-05-26 03:54:11'),
(7, 4, 'Lydia', 'Cette crème est vraiment efficace, je la recommande ;)', '2023-06-29 14:19:06'),
(8, 4, 'Sonia', 'Ma dermato m’a recommandé cette crème hydratante de Frudia !!!', '2023-09-06 02:19:59'),
(9, 5, 'Jessica', 'La crème me tente bien 😊', '2023-10-31 04:34:49'),
(10, 5, 'Lili', 'Je l\'ai introduite dans ma skincare routine et elle est incroyable ❤️❤️', '2023-09-22 03:19:51'),
(11, 6, 'Luke', 'C’est un très bon produit pour les peaux mixtes. Je l\'utilise tous les matins et soirs :))', '2023-09-26 04:47:30'),
(12, 6, 'Melissa', 'La crème sent trop bon 💕', '2023-08-27 04:38:15'),
(13, 7, 'Loly', 'Cette crème est topissime pour l\'hydratation en profondeur de la peau.', '2023-06-26 02:49:52'),
(14, 7, 'Jenny', 'Je vais en racheter, c\'est une des meilleures crèmes que j\'ai pu tester ✨', '2022-10-24 02:43:08'),
(15, 8, 'Paula', 'Je teste cette marque depuis plus de 2 ans, et je ne suis jamais déçue de ces produits.', '2023-10-15 05:42:29'),
(16, 8, 'Maya', 'Cette crème, un véritable coup de coeur ❤️💕', '2023-10-30 08:52:34'),
(17, 9, 'Natacha', 'J\'ai essayé plusieurs masques hydratants et même si ils sont bien, ce masque à l\'Aloe Vera est le meilleur !!!!', '2023-11-26 03:47:07'),
(18, 9, 'Patrick', 'Ce masque est mon produit FAVORI', '2023-12-30 03:53:34'),
(19, 10, 'Chris', 'Un des meilleurs produits de la marque Beauty of Joseon !', '2023-08-30 03:37:07'),
(20, 10, 'Charly', 'My favorite product ! I love it ', '2024-02-09 12:54:18'),
(21, 11, 'Mathilde', 'Le meilleur masque.', '2024-05-25 12:35:11'),
(22, 11, 'Emmy', 'This product is amaazing ', '2024-02-16 03:42:19'),
(23, 12, 'Lara', 'Ce masque pour les mains sent trop bon !!', '2023-11-28 03:46:29'),
(24, 12, 'Marylou', 'Ce masque pour les mains vaut le coup ! Je le recommande !', '2024-02-27 16:27:10'),
(25, 13, 'Manon', 'Ce masque m\'a apporté rapidement des résultats. Il a pu apaiser les rougeurs de ma peau.', '2023-12-02 06:27:19'),
(26, 13, 'Camélia', 'It\'s a great product <33', '2023-11-29 11:27:32'),
(27, 14, 'Richard', 'Ce masque vous offrira un bon moment de détente ! ', '2024-02-19 07:37:24'),
(28, 14, 'Stacy', 'C\'est le meilleur produit de la gamme Fruits Rouges de chez Frudia.', '2024-05-12 07:27:53'),
(29, 15, 'Naomy', 'Ayant une peau sensible, le masque à la caféine n\'agresse pas du tout la peau.', '2023-09-18 11:16:00'),
(30, 15, 'Vanessa', 'Je valide le nouveau masque de la gamme \"caféine\" <3', '2024-03-17 10:40:29'),
(31, 16, 'Jojo', 'Je recommande ce masque pour les fans de skincare ✨', '2024-02-11 08:44:22'),
(32, 16, 'Anaïs', 'INCROYABLE ! Il me donne un effet glass skin ! J\'ADORE', '2024-01-14 16:28:31'),
(33, 17, 'Cloé', 'Je suis une grande fan de baumes pour le visage 🤍🤍', '2023-08-30 09:29:33'),
(34, 17, 'Stella', 'La gamme Rétinol de chez Beauty of Joseon ne me déçoit JAMAIS.', '2023-03-19 07:18:45'),
(35, 18, 'Nivia', 'Je découvre Beauty of Joseon et je suis plutôt contente de cette marque.', '2022-05-17 12:29:57'),
(36, 18, 'Cynthia', '✨ PÉPITE ✨', '2023-08-29 12:30:13'),
(37, 19, 'Diana', 'La marque Beauty of Joseon je valide, au top 😍😍', '2023-09-24 13:44:25'),
(38, 19, 'Sally', 'J\'ai testé toute la gamme Mangue de Beauty of Joseon, une pure merveille ! Les ingrédients sont top !!', '2023-11-18 09:47:37'),
(39, 20, 'Lilia', 'Pour moi les meilleurs produits skincare sont ceux de chez FRUDIA !', '2024-02-02 16:09:47'),
(40, 20, 'Val', 'Le baume a une odeur exquise 🍓❤️', '2024-02-17 07:31:00'),
(41, 21, 'Mimi', 'J’adore la texture du baume au beurre de karité 😍😍', '2023-08-28 11:12:09'),
(42, 21, 'Elea', 'Je ne regrette pas cet achat.', '2023-07-18 08:12:20'),
(43, 22, 'Nilla', 'J\'aime beaucoup ce baume !', '2023-04-29 06:16:30'),
(44, 22, 'Steph', 'Meilleure marque de SkinCare >>>', '2023-10-28 09:07:42'),
(45, 23, 'Marya', 'Skin & Lab >>>>', '2023-08-26 10:19:54'),
(46, 23, 'Pascal', 'C\'est le meilleur produit de ma skincare routine ', '2024-05-30 08:32:05'),
(47, 24, 'Rose', 'Trop hâte de commander ce produit ! J\'ai entendu que des avis positifs sur le baume à la vitamine C.', '2024-02-14 16:15:32'),
(48, 24, 'JM', 'J\'ai reçu la gamme complète à la vitamine C. Le baume >>>', '2023-06-16 05:32:24'),
(49, 25, 'Daisie', 'Ce sérum a réussi à illuminer ma peau ✨', '2023-06-30 09:32:07'),
(50, 25, 'Sofia', 'BEAUTY OF JOSEON >>>>', '2023-07-16 08:11:50'),
(51, 26, 'Jenna', 'Vraiment top', '2023-10-15 07:33:04'),
(52, 26, 'Dory', 'Ce sérum a donné une seconde vie à ma peau 😍', '2023-11-05 07:19:18'),
(53, 27, 'Alice', 'Je recommande fortement ce sérum !', '2023-03-18 16:33:27'),
(54, 27, 'Amely', 'Le sérum parvient parfaitement aux peaux grasses ❤️', '2023-10-04 16:33:37'),
(55, 28, 'Maryline', 'Le meilleur sérum hydratant >>', '2023-07-29 06:33:47'),
(56, 28, 'Cess', 'Je valide', '2023-09-22 10:20:57'),
(57, 29, 'Sandra', 'Le sérum a réussi à apaiser mes irritations et à réduire mes rougeurs sur la peau. Merci Frudia !', '2023-09-15 10:34:08'),
(58, 29, 'Kath', 'Un indispensable dans ma routine de soin de peau.', '2023-12-16 08:34:18'),
(59, 30, 'Canelle', 'Le sérum ne donne pas un effet gras. Je le recommande vivement ;)', '2024-05-25 05:13:28'),
(60, 30, 'Cécile', 'Ma peau s\'est transformée grâce au sérum ! Achetez-le !', '2023-04-25 12:22:35'),
(61, 31, 'Lëo', 'J\'utilise le sérum tous les soirs et il laisse la peau repulpée, douce et souple. ', '2023-10-21 08:20:50'),
(62, 31, 'Jade', 'Le sérum à la Rose a amélioré la texture de ma peau. Je suis plutôt satisfaite 😊', '2023-09-10 09:10:01'),
(63, 32, 'Félicie', 'Ce soin est devenue rapidement un incontournable de ma  skincare routine.', '2023-11-24 05:52:11'),
(64, 32, 'Adam', 'Ma peau est devenue toute douce, lisse et parfaitement hydratée ❤️', '2024-05-20 08:19:21');

-- --------------------------------------------------------

--
-- Structure de la table `Ingredient`
--

CREATE TABLE `Ingredient` (
  `id_ingredient` int(11) NOT NULL,
  `nom_ingredient` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Ingredient`
--

INSERT INTO `Ingredient` (`id_ingredient`, `nom_ingredient`) VALUES
(1, 'Citron'),
(2, 'Beurre de Karité'),
(3, 'Aloe Vera'),
(4, 'Grenade'),
(5, 'Lavande'),
(6, 'Camomille'),
(7, 'Acide Hyaluronique'),
(8, 'Vitamine E'),
(9, 'Argile Verte'),
(10, 'Charbon'),
(11, 'Noix de Coco'),
(12, 'Avocat'),
(13, 'Fruits Rouges'),
(14, 'Café'),
(15, 'Rétinol'),
(16, 'Mangue'),
(17, 'Vitamine C'),
(18, 'Rose'),
(19, 'Collagène');

-- --------------------------------------------------------

--
-- Structure de la table `Marque`
--

CREATE TABLE `Marque` (
  `id_marque` int(11) NOT NULL,
  `nom_marque` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Marque`
--

INSERT INTO `Marque` (`id_marque`, `nom_marque`) VALUES
(1, 'Beauty of Joseon'),
(2, 'Frudia'),
(3, 'Skin&Lab');

-- --------------------------------------------------------

--
-- Structure de la table `Nouveau-Commentaire`
--

CREATE TABLE `Nouveau-Commentaire` (
  `id_nc` int(11) NOT NULL,
  `id_article` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `datee` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Nouveau-Commentaire`
--

INSERT INTO `Nouveau-Commentaire` (`id_nc`, `id_article`, `name`, `comment`, `datee`) VALUES
(1, 24, 'Mel', 'top', '2024-05-25 16:00:49'),
(2, 18, 'Tom', 'wow', '2024-05-25 16:37:10'),
(3, 22, 'TAK', 'Incroyable', '2024-05-25 17:06:49'),
(4, 19, 'SAMM', 'Meilleur Produit ', '2024-05-25 17:09:50'),
(5, 23, 'Antonio', 'WAW', '2024-05-25 17:11:32'),
(7, 23, 'Irène', 'excellent', '2024-05-25 22:01:09'),
(8, 17, 'TCHAK', 'TOPP', '2024-05-25 23:34:18'),
(9, 21, 'LILI', 'ce produit &gt;&gt;&gt;', '2024-05-25 23:37:21'),
(11, 18, 'TM', 'ce produit est génial', '2024-05-26 10:50:06'),
(12, 32, 'mello', 'incroyable ce produit', '2024-05-26 12:21:14'),
(13, 9, 'Test', 'Test', '2024-05-26 16:46:30'),
(14, 11, 'Test2', 'Test2', '2024-05-26 16:50:56'),
(15, 10, 'aland', 'pas mal en effet le site est lisible ', '2024-05-26 18:57:34'),
(16, 1, 'lionel messi ', 'depuis que je met le creme de merde la ma vie va mal ', '2024-05-26 23:20:28'),
(17, 15, 'XCVD', 'CXVX', '2024-05-28 20:16:22'),
(18, 1, 'Manel', 'la vie est nulle', '2024-05-29 09:30:38'),
(19, 16, 'manelou', 'Ce masque m&#039;a bien réparé !!', '2024-05-29 14:54:34'),
(20, 22, 'juju', 'je suis trop beauxxx ', '2024-05-29 14:57:15'),
(21, 12, 'cloclo', 'j&#039;aime cro le site', '2024-05-30 14:42:36'),
(22, 1, 'LOLA SCHMITT', 'melinda en vrai je te deteste mais j&#039;ose pas le dire en face ducoup je le dis ici pour évacuer ma haine envers toi', '2024-05-31 09:27:23');

-- --------------------------------------------------------

--
-- Structure de la table `Type`
--

CREATE TABLE `Type` (
  `id_type` int(11) NOT NULL,
  `nom_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Type`
--

INSERT INTO `Type` (`id_type`, `nom_type`) VALUES
(1, 'Peau sèche'),
(2, 'Peau grasse'),
(3, 'Peau mixte'),
(4, 'Peau sensible');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Article`
--
ALTER TABLE `Article`
  ADD PRIMARY KEY (`id_article`),
  ADD KEY `id_marque` (`id_marque`),
  ADD KEY `id_type` (`id_type`);

--
-- Index pour la table `Article_Categorie`
--
ALTER TABLE `Article_Categorie`
  ADD PRIMARY KEY (`id_article_categorie`),
  ADD KEY `id_article` (`id_article`),
  ADD KEY `id_article_2` (`id_article`),
  ADD KEY `id_categorie` (`id_categorie`);

--
-- Index pour la table `Article_Ingredient`
--
ALTER TABLE `Article_Ingredient`
  ADD PRIMARY KEY (`id_article_ingredient`),
  ADD KEY `id_article` (`id_article`),
  ADD KEY `id_ingredient` (`id_ingredient`);

--
-- Index pour la table `Categorie`
--
ALTER TABLE `Categorie`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Index pour la table `Commentaire`
--
ALTER TABLE `Commentaire`
  ADD PRIMARY KEY (`id_commentaire`),
  ADD KEY `id_article` (`id_article`);

--
-- Index pour la table `Ingredient`
--
ALTER TABLE `Ingredient`
  ADD PRIMARY KEY (`id_ingredient`);

--
-- Index pour la table `Marque`
--
ALTER TABLE `Marque`
  ADD PRIMARY KEY (`id_marque`);

--
-- Index pour la table `Nouveau-Commentaire`
--
ALTER TABLE `Nouveau-Commentaire`
  ADD PRIMARY KEY (`id_nc`),
  ADD KEY `id_article` (`id_article`);

--
-- Index pour la table `Type`
--
ALTER TABLE `Type`
  ADD PRIMARY KEY (`id_type`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Nouveau-Commentaire`
--
ALTER TABLE `Nouveau-Commentaire`
  MODIFY `id_nc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Article`
--
ALTER TABLE `Article`
  ADD CONSTRAINT `Article_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `Type` (`id_type`),
  ADD CONSTRAINT `Article_ibfk_2` FOREIGN KEY (`id_marque`) REFERENCES `Marque` (`id_marque`);

--
-- Contraintes pour la table `Article_Categorie`
--
ALTER TABLE `Article_Categorie`
  ADD CONSTRAINT `Article_Categorie_ibfk_1` FOREIGN KEY (`id_article`) REFERENCES `Article` (`id_article`),
  ADD CONSTRAINT `Article_Categorie_ibfk_2` FOREIGN KEY (`id_categorie`) REFERENCES `Categorie` (`id_categorie`);

--
-- Contraintes pour la table `Article_Ingredient`
--
ALTER TABLE `Article_Ingredient`
  ADD CONSTRAINT `Article_Ingredient_ibfk_1` FOREIGN KEY (`id_article`) REFERENCES `Article` (`id_article`),
  ADD CONSTRAINT `Article_Ingredient_ibfk_2` FOREIGN KEY (`id_ingredient`) REFERENCES `Ingredient` (`id_ingredient`);

--
-- Contraintes pour la table `Nouveau-Commentaire`
--
ALTER TABLE `Nouveau-Commentaire`
  ADD CONSTRAINT `Nouveau-Commentaire_ibfk_1` FOREIGN KEY (`id_article`) REFERENCES `Article` (`id_article`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
