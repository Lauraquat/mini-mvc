-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 02 fév. 2023 à 20:13
-- Version du serveur : 8.0.31-0ubuntu0.20.04.2
-- Version de PHP : 8.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mvc_rvf`
--

-- --------------------------------------------------------

--
-- Structure de la table `actors`
--

CREATE TABLE `actors` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `actors`
--

INSERT INTO `actors` (`id`, `name`, `pseudo`, `photo`) VALUES
(1, 'Michael J. Fox', 'Marty McFly', 'https://www.pause-canap.com/media/wysiwyg/Marty-macfly.jpg'),
(2, 'Christopher Lloyd', ' Doc', 'https://media-mcetv.ouest-france.fr/wp-content/uploads/2015/10/Retour-vers-le-futur-Christopher-Lloyd-Doc-est-partant-pour-tourner-la-suite-.jpg'),
(3, 'Léa Thompson', ' Lorraine Baines-McFly, la mère de Marty', 'https://images.squarespace-cdn.com/content/v1/5c62c09c4d546e27dc1016c7/1555567112859-8N18QRD1T1OXWPLGQIW7/lea-thompson_300x300.jpg?format=500w'),
(4, 'Crispin Glover ', ' George Douglas McFly, le père de Marty', 'https://images.squarespace-cdn.com/content/v1/5c62c09c4d546e27dc1016c7/1555567112696-19FIAL9BB8201JK39BLP/crispin-glover_300x300.jpg?format=500w'),
(5, 'Thomas F. Wilson', 'Biff Tannen', 'https://images.squarespace-cdn.com/content/v1/5c62c09c4d546e27dc1016c7/1555567113053-TX3KDG6LVF16FH4MDDQD/tom-wilson_300x300.jpg?format=500w'),
(6, 'Claudia Wells ', ' Jennifer Parker, la petite amie de Marty', 'https://images.squarespace-cdn.com/content/v1/5c62c09c4d546e27dc1016c7/1555567112395-8Q20VZUWZX1UQP0TOZKV/claudia-wells_300x300.jpg?format=500w'),
(7, 'Marc McClure', 'Dave McFly, le frère de Marty', 'https://assets.mycast.io/characters/dave-mcfly-7192717-normal.jpg?1655465621'),
(8, 'Wendie Jo Sperber ', 'Linda McFly, la sœur de Marty', 'https://upload.wikimedia.org/wikipedia/commons/b/bd/Wendie_Jo_Sperber.jpg'),
(9, 'James Tolkan', 'M. Strickland', 'https://img.buzzfeed.com/buzzfeed-static/static/2014-10/27/10/enhanced/webdr05/m-grid-cell-15698-1414420437-1.jpg'),
(10, 'Elisabeth Shue ', 'Jennifer Parker', 'https://resize-elle.ladmedia.fr/rcrop/638,,forcex/img/var/plain_site/storage/images/loisirs/cinema/dossiers/que-sont-ils-devenus-les-acteurs-de-retour-vers-le-futur/claudia-wells-est-jennifer-parker/52160712-1-fre-FR/Claudia-Wells-est-Jennifer-Parker.jpg'),
(11, 'Mary Steenburgen', 'Clara Clayton Brown', 'https://images.squarespace-cdn.com/content/v1/5c62c09c4d546e27dc1016c7/1557085970713-3IGOCV49ISP7KHWSEN5T/mary-steenburgen_300x300.jpg?format=500w'),
(12, 'Jeffrey Weissman', 'George McFly', 'https://images.squarespace-cdn.com/content/v1/5c62c09c4d546e27dc1016c7/1556722758389-9T4CV2SMXUIUJKKIC82I/jeffrey-weissman_300x300.jpg?format=500w');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `pseudo` varchar(50) NOT NULL,
  `movies_id` int NOT NULL,
  `commentaires` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `comments_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `pseudo`, `movies_id`, `commentaires`, `comments_date`) VALUES
(1, 'fan_2', 1, 'Super Film, j\'ai adoré <3 ', '2023-01-10 17:05:45'),
(2, 'first_fan', 3, 'Une tuerie je recommande', '2022-12-13 08:03:55'),
(23, 'Laura', 2, 'J\'ai adoré ce film !', '2023-02-02 19:11:39');

-- --------------------------------------------------------

--
-- Structure de la table `movies`
--

CREATE TABLE `movies` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `imgbaniere` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `date` year NOT NULL,
  `img` text NOT NULL,
  `synopsis` text NOT NULL,
  `ba` text NOT NULL,
  `story` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `movies`
--

INSERT INTO `movies` (`id`, `name`, `imgbaniere`, `date`, `img`, `synopsis`, `ba`, `story`) VALUES
(1, 'Retour vers le futur', 'https://www.thesun.co.uk/wp-content/uploads/2022/10/NINTCHDBPICT000767068830.jpg', 1985, 'https://fr.web.img2.acsta.net/pictures/22/07/22/15/00/2862661.jpg', 'Le jeune Marty McFly mène une existence anonyme, auprès de sa petite amie Jennifer, troublée par sa famille en crise et un proviseur qui serait ravi de l\'expulser du lycée. Il accompagne le professeur Emmett Brown tester sa nouvelle expérience : le voyage dans le temps via une DeLorean modifiée. ', 'https://www.youtube.com/embed/WRrCVyT09ow', 'Hill Valley, le 25 octobre 1985. Marty McFly, un adolescent typique des années 1980, mène l\'existence d\'un garçon de son âge, celle d\'un lycéen fana de musique. Son père, George McFly, timide, couard et ne supportant pas le conflit, s\'écrase sans cesse devant son chef de bureau Biff Tannen qui l\'oblige à rédiger ses propres comptes rendus. La mère de Marty, Lorraine Baines-McFly a un penchant pour la boisson, son mariage avec George lui pesant. Très possessive et un peu vieux jeu, elle juge défavorablement la petite amie de son fils, Jennifer, qu\'elle trouve trop émancipée. Marty a aussi un frère, Dave et une sœur, Linda qui vivent une vie d\'Américains moyens comme le reste de la famille.\n\nMarty a également pour ami un extravagant scientifique, le docteur Emmett Brown, surnommé par Marty « Doc ». Ce dernier, au terme de trente ans de recherches, a mis au point une machine à voyager dans le temps qu\'il a intégré dans une voiture DeLorean DMC-12 modifiée. Le soir même, Doc invite Marty à venir le rejoindre sur le parking d\'un centre commercial pour lui faire une démonstration de son invention. Utilisant une télécommande pour faire démarrer le véhicule, Doc envoie la DeLorean (avec son chien Einstein à l\'intérieur) une minute en avance dans le temps, sous l\'œil effaré de Marty qui filme la scène avec son caméscope.\n\n\nLa caisse contenant le plutonium utilisé par Doc pour la DeLorean dans le film.\nÀ l\'issue de l\'expérience qui voit le retour de la voiture et d\'Einstein sains et saufs, Doc explique à Marty que sa machine à voyager dans le temps a besoin de plutonium pour alimenter en énergie le « convecteur temporel » de la DeLorean — le dispositif qui permet le voyage dans le temps —, le convecteur ayant besoin de 1,21 gigawatts (2,21 « gigowatts » en VFNote 1)Note 2 de puissance électrique pour fonctionner. Après l\'avoir équipé comme lui d\'une combinaison anti-radiations et d\'un masque à gaz, Doc refait le « plein » en plutonium de la machine (se servant d\'une pastille de plutonium qu\'il sort d\'une caisse) en prévision du voyage dans le temps qu\'il s’apprête à effectuer.'),
(2, 'Retour vers le futur 2', 'https://images-na.ssl-images-amazon.com/images/S/pv-target-images/64b859066bab94f177e02822628b2b8008307ba4857d7b13093d7f230c5e105b._RI_.jpg', 1989, 'https://fr.web.img3.acsta.net/pictures/22/07/22/15/26/3322260.jpg', 'Lors de son premier voyage en 1985, Marty a commis quelques erreurs. L\'avenir qu\'il s\'était tracé n\'est pas si rose, et son rejeton est tombé sous la coupe du voyou Griff Tannen, qui veut régner sur la ville.', 'https://www.youtube.com/embed/5LnPaD-jHdI', 'Alors qu\'il vient de retrouver sa petite amie Jennifer, arrivée chez lui, Marty reçoit la visite surprise de son ami, le docteur Emmett Brown, surnommé « Doc » (l\'inventeur de la machine à voyager dans le temps), qui débarque devant la maison de ses parents au volant de la DeLorean que Marty avait utilisé pour aller en 1955 et en revenir.\n\nDoc, habillé bizarrement et apparemment affolé, informe Marty et Jennifer qu\'il vient de visiter le futur et que leur descendance est en danger. Insistant pour qu\'ils l\'accompagnent, Doc souhaite emmener Marty et Jennifer trente ans dans le futur, en 20151 afin d\'empêcher le pire : leur fils, Marty McFly Junior, s\'apprête en effet bien malgré lui à être le complice de Griff Tannen (le petit-fils de Biff Tannen, l’antagoniste du premier film) dans une tentative de vol ratée au centre commercial de Hill Valley. Doc les informe que cet évènement produira une catastrophe en chaine, conduisant à sa propre arrestation. Grimpant à bord du véhicule, les trois compères décollent et la DeLorean part dans une gerbe d\'étincelles vers le futur.\n\nMais, à peine arrivés en 2015, Doc se voit obligé d\'endormir Jennifer car il a peur que sa présence affecte trop le futur (Jennifer demandant à Doc des détails sur son mariage avec Marty), mais aussi pour permettre à Marty d\'accomplir sa tâche discrètement et sans encombre.\n\n\nCosplay de Marty McFly avec sa tenue futuriste de 2015.\n\nLe hoverboard utilisé par Marty dans le film.\nArrivés au centre-ville de Hill Valley, Doc explique à Marty qu\'il doit se rendre dans un café à l\'ancienne, le « Café 80’ » et, sous l\'apparence de son fils Marty Junior, indiquer à Griff son refus de coopérer au hold-up prévu. Cependant, alors qu\'il entre dans l\'établissement, Marty voit son fils Marty Junior arriver lui-aussi dans le café. Marty parvient à prendre la place de son fils ; il refuse ensuite de faire le hold-up et provoque le jeune Griff. Ce dernier, à la tête de sa bande, poursuit Marty qui s\'échappe en pilotant un hoverboard. La course poursuite est finalement stoppée lorsque Griff et sa bande percutent la façade de l\'hôtel de ville. Le gang est arrêté par la police. Lui montrant alors une coupure de journal, Doc explique à Marty que le futur vient d\'être modifié, car le casse n\'a pas lieu : Marty Junior n\'est pas emprisonné et sa sœur Marlene non plus en essayant de sauver son frère ; le futur de Doc Brown est aussi modifié.\n\nAlors qu\'il visite les boutiques du centre-ville pendant que Doc prépare leur retour en 1985, Marty, appâté par le gain, achète dans une boutique de souvenirs des années 1980 un almanach des sports, l\'ouvrage retraçant l\'ensemble des résultats sportifs survenus depuis les années 1950 jusque dans les années 2000, avec l\'intention de s\'enrichir lorsqu’il retournera à son époque. Mais Doc, devinant ses intentions, lui défend de le faire et lui prend l\'almanach des mains, qu\'il jette dans une poubelle sous les yeux du vieux Biff Tannen (le grand-père de Griff, devenu un vieillard à cette époque), qui passait par là.'),
(3, 'Retour vers le futur 3', 'https://occ-0-1361-64.1.nflxso.net/dnm/api/v6/E8vDc_W8CLv7-yMQu8KMEC7Rrr8/AAAABfyVsLpEvsrLxoDKFrw9IEKT4sYaWBj1flW-swbX8e8li4z0yPLookbQjzTlpjTu6tyTFXzljVgvyXjf4zlyTi5yCHsIoa4L4zIA.jpg?r=243', 1990, 'https://fr.web.img2.acsta.net/pictures/22/07/22/15/33/2823541.jpg', 'Marty McFly est coincé en 1955, car Doc s\'est retrouvé propulsé en plein Far West, où il s\'est établi comme maréchal-ferrant, après que la foudre s\'est abattue sur la DeLorean.', 'https://www.youtube.com/embed/DTdBq1fQOBU', 'Quelques instants après avoir vu Doc Brown disparaître avec la DeLorean, frappé d\'un éclair, Marty est abordé par un coursier en voiture en 1955. Celui-ci lui annonce qu\'il a reçu pour consigne de se rendre en ce lieu précis et à cette date précise, à la recherche d\'un certain « Marty McFly ». Il donne ensuite à Marty une lettre, postée depuis soixante-dix ans.En lisant la lettre, qui s\'avère être écrite par Doc, Marty apprend que celui-ci a été projeté à cause de l\'éclair dans le passé, en 1885, en plein Far West. Dans sa lettre, Doc lui indique qu\'il va bien et qu\'il s\'est établi comme maréchal-ferrant à Hill Valley. Il conseille à Marty de retrouver son double de 1955 pour que celui-ci l\'aide à repartir en 1985, grâce à la DeLorean qu\'il a cachée en 1885 dans une ancienne mine d\'argent1.Marty retourne alors voir le Doc de 1955, juste après où celui-ci vient de renvoyer le Marty du premier épisode vers l\'année 1985. Frappé de stupeur devant cette apparition, le Doc de 1955 s\'évanouit ; Marty le ramène à son manoir.Le lendemain, le jeune homme explique à Doc toutes les péripéties de l\'épisode II. Les deux partent ensuite à la recherche de la DeLorean cachée, enfermée par les soins de Doc en 1885 derrière le mur d\'une galerie minière, frappé de ses initiales « ELB ». La voiture est presque intacte ; seule la puce électronique de régulation du circuit temporel est inutilisable, grillée à cause de l\'éclair. Mais, peu après, dans le cimetière attenant à la mine, Marty tombe nez à nez avec la tombe de Doc, qui a apparemment été assassiné une semaine seulement après l\'écriture de sa lettre, par Buford « Molosse » Tannen, un ancêtre de Biff Tannen. Marty décide, malgré les ordres de Doc lui disant de ne pas venir le retrouver, d\'aller à cette époque pour le sauver, en arrivant cinq jours avant son assassinat pour avoir le temps de le prévenir.');

-- --------------------------------------------------------

--
-- Structure de la table `movies_actors`
--

CREATE TABLE `movies_actors` (
  `movies_id` int NOT NULL,
  `actors_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `movies_actors`
--

INSERT INTO `movies_actors` (`movies_id`, `actors_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(1, 2),
(2, 2),
(3, 2),
(1, 3),
(2, 3),
(3, 3),
(1, 4),
(3, 4),
(1, 5),
(2, 5),
(3, 5),
(1, 6),
(3, 6),
(1, 7),
(2, 7),
(3, 7),
(1, 8),
(2, 8),
(3, 8),
(1, 9),
(2, 9),
(3, 9),
(1, 10),
(2, 10),
(3, 10),
(3, 11),
(2, 12),
(3, 12);

-- --------------------------------------------------------

--
-- Structure de la table `movies_images`
--

CREATE TABLE `movies_images` (
  `id` int NOT NULL,
  `movies_id` int NOT NULL,
  `image` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `movies_images`
--

INSERT INTO `movies_images` (`id`, `movies_id`, `image`) VALUES
(1, 1, 'https://resize-elle.ladmedia.fr/rcrop/638,,forcex/img/var/plain_site/storage/images/loisirs/cinema/dossiers/que-sont-ils-devenus-les-acteurs-de-retour-vers-le-futur/52160496-1-fre-FR/Que-sont-ils-devenus-les-acteurs-de-Retour-vers-le-futur.jpg'),
(2, 1, 'https://cdn-europe1.lanmedia.fr/var/europe1/storage/images/europe1/medias-tele/retour-vers-le-futur-que-sont-devenus-les-heros-du-film-2906756/29921987-1-fre-FR/Retour-vers-le-futur-que-sont-devenus-les-heros-du-film.jpg'),
(3, 1, 'https://www.slate.fr/sites/default/files/styles/1060x523/public/bttf.jpg'),
(4, 2, 'https://www.challenges.fr/assets/img/2007/06/01/cover-r4x3w1000-5836c90b314d8-michael-j-fox-dans-retour.jpg'),
(5, 2, 'https://imgsrc.cineserie.com/2020/12/retour-vers-le-futur-2-sur-tf1-la-reponse-geniale-de-tom-wilson-biff-quand-les-fans-l-arretent-dans-la-rue-1.jpg?ver=1'),
(6, 2, 'https://static.lpnt.fr/images/2015/01/04/3037411-w-retour-vers-le-futur2-17-jaws-19-jpg_2644698.jpg'),
(7, 3, 'https://www.telerama.fr/sites/tr_master/files/styles/simplecrop1000/public/medias/2017/05/media_158231/retour-vers-le-futur-3-en-vf-nom-de-zeus%2CM455281.jpg?itok=fChYNMaW'),
(8, 3, 'https://i.ytimg.com/vi/bkol2SYrl_g/hqdefault.jpg'),
(9, 3, 'https://www.leblogducinema.com/wp-content/uploads//2022/02/retour-vers-le-futur-3-1155x770.jpg'),
(10, 1, 'https://www.gannett-cdn.com/-mm-/94572ad71c1c554abae670ec7bd4871e2898e3b2/c=0-142-3000-1837/local/-/media/2015/10/21/USATODAY/USATODAY/635809824922215243-AP-BACK-TO-THE-FUTURE-DAY-76890712.JPG?width=3000&height=1695&fit=crop&format=pjpg&auto=webp'),
(11, 1, 'https://www.thesun.co.uk/wp-content/uploads/2022/10/NINTCHDBPICT000767068830.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'Lauraquat', 'lauraquat@gmail.com', 'aq150ca4db7286103f540d6b7b02d0fd381d61667f725'),
(2, 'Lea', 'lea.sa@gmail.com', 'aq11a0158f580aad91f75b5ac92179f9fc4d2eee54325'),
(3, 'lea', 'lea.sagnier@gmail.com', 'aq150ca4db7286103f540d6b7b02d0fd381d61667f725');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movies_id` (`movies_id`);

--
-- Index pour la table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `movies_actors`
--
ALTER TABLE `movies_actors`
  ADD UNIQUE KEY `movies_id` (`movies_id`,`actors_id`),
  ADD KEY `actors_id` (`actors_id`);

--
-- Index pour la table `movies_images`
--
ALTER TABLE `movies_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movies_id` (`movies_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `movies_images`
--
ALTER TABLE `movies_images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `movies_actors`
--
ALTER TABLE `movies_actors`
  ADD CONSTRAINT `movies_actors_ibfk_1` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movies_actors_ibfk_2` FOREIGN KEY (`actors_id`) REFERENCES `actors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `movies_images`
--
ALTER TABLE `movies_images`
  ADD CONSTRAINT `movies_images_ibfk_1` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
