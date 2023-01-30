-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : sam. 28 jan. 2023 à 15:12
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
(2, 'Michael J. Fox', 'Marty McFly', 'https://www.pause-canap.com/media/wysiwyg/Marty-macfly.jpg'),
(3, 'Christopher Lloyd', ' Doc', 'https://media-mcetv.ouest-france.fr/wp-content/uploads/2015/10/Retour-vers-le-futur-Christopher-Lloyd-Doc-est-partant-pour-tourner-la-suite-.jpg'),
(8, 'Léa Thompson', ' Lorraine Baines-McFly, la mère de Marty', 'https://images.squarespace-cdn.com/content/v1/5c62c09c4d546e27dc1016c7/1555567112859-8N18QRD1T1OXWPLGQIW7/lea-thompson_300x300.jpg?format=500w'),
(9, 'Crispin Glover ', ' George Douglas McFly, le père de Marty', 'https://images.squarespace-cdn.com/content/v1/5c62c09c4d546e27dc1016c7/1555567112696-19FIAL9BB8201JK39BLP/crispin-glover_300x300.jpg?format=500w'),
(12, 'Thomas F. Wilson', 'Biff Tannen', 'https://images.squarespace-cdn.com/content/v1/5c62c09c4d546e27dc1016c7/1555567113053-TX3KDG6LVF16FH4MDDQD/tom-wilson_300x300.jpg?format=500w'),
(13, 'Claudia Wells ', ' Jennifer Parker, la petite amie de Marty', 'https://images.squarespace-cdn.com/content/v1/5c62c09c4d546e27dc1016c7/1555567112395-8Q20VZUWZX1UQP0TOZKV/claudia-wells_300x300.jpg?format=500w'),
(14, 'Marc McClure', 'Dave McFly, le frère de Marty', 'https://assets.mycast.io/characters/dave-mcfly-7192717-normal.jpg?1655465621'),
(15, 'Wendie Jo Sperber ', 'Linda McFly, la sœur de Marty', 'https://upload.wikimedia.org/wikipedia/commons/b/bd/Wendie_Jo_Sperber.jpg'),
(16, 'James Tolkan', 'M. Strickland', 'https://img.buzzfeed.com/buzzfeed-static/static/2014-10/27/10/enhanced/webdr05/m-grid-cell-15698-1414420437-1.jpg'),
(18, 'Elisabeth Shue ', 'Jennifer Parker', 'https://resize-elle.ladmedia.fr/rcrop/638,,forcex/img/var/plain_site/storage/images/loisirs/cinema/dossiers/que-sont-ils-devenus-les-acteurs-de-retour-vers-le-futur/claudia-wells-est-jennifer-parker/52160712-1-fre-FR/Claudia-Wells-est-Jennifer-Parker.jpg'),
(19, 'Mary Steenburgen', 'Clara Clayton Brown', 'https://images.squarespace-cdn.com/content/v1/5c62c09c4d546e27dc1016c7/1557085970713-3IGOCV49ISP7KHWSEN5T/mary-steenburgen_300x300.jpg?format=500w'),
(20, 'Jeffrey Weissman', 'George McFly', 'https://images.squarespace-cdn.com/content/v1/5c62c09c4d546e27dc1016c7/1556722758389-9T4CV2SMXUIUJKKIC82I/jeffrey-weissman_300x300.jpg?format=500w');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `movies_id` int NOT NULL,
  `commentaires` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `comments_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `movies_id`, `commentaires`, `comments_date`) VALUES
(1, 2, 'Super Film, j\'ai adoré <3 ', '2023-01-10 17:05:45'),
(2, 4, 'Une tuerie je recommande', '2022-12-13 08:03:55'),
(3, 2, 'jhgkjh', '2023-01-27 11:46:00'),
(4, 2, 'cool!', '2023-01-27 13:33:11'),
(5, 2, 'trest', '2023-01-28 11:09:32');

-- --------------------------------------------------------

--
-- Structure de la table `movies`
--

CREATE TABLE `movies` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` year NOT NULL,
  `img` text NOT NULL,
  `synopsis` text NOT NULL,
  `ba` text NOT NULL,
  `story` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `movies`
--

INSERT INTO `movies` (`id`, `name`, `date`, `img`, `synopsis`, `ba`, `story`) VALUES
(2, 'Retour vers le futur', 1985, 'https://fr.web.img2.acsta.net/pictures/22/07/22/15/00/2862661.jpg', 'Le jeune Marty McFly mène une existence anonyme, auprès de sa petite amie Jennifer, troublée par sa famille en crise et un proviseur qui serait ravi de l\'expulser du lycée. Il accompagne le professeur Emmett Brown tester sa nouvelle expérience : le voyage dans le temps via une DeLorean modifiée. ', 'https://www.youtube.com/embed/WRrCVyT09ow', 'Hill Valley, le 25 octobre 1985. Marty McFly, un adolescent typique des années 1980, mène l\'existence d\'un garçon de son âge, celle d\'un lycéen fana de musique. Son père, George McFly, timide, couard et ne supportant pas le conflit, s\'écrase sans cesse devant son chef de bureau Biff Tannen qui l\'oblige à rédiger ses propres comptes rendus. La mère de Marty, Lorraine Baines-McFly a un penchant pour la boisson, son mariage avec George lui pesant. Très possessive et un peu vieux jeu, elle juge défavorablement la petite amie de son fils, Jennifer, qu\'elle trouve trop émancipée. Marty a aussi un frère, Dave et une sœur, Linda qui vivent une vie d\'Américains moyens comme le reste de la famille.Marty a également pour ami un extravagant scientifique, le docteur Emmett Brown, surnommé par Marty « Doc ». Ce dernier, au terme de trente ans de recherches, a mis au point une machine à voyager dans le temps qu\'il a intégré dans une voiture DeLorean DMC-12 modifiée. Le soir même, Doc invite Marty à venir le rejoindre sur le parking d\'un centre commercial pour lui faire une démonstration de son invention. Utilisant une télécommande pour faire démarrer le véhicule, Doc envoie la DeLorean (avec son chien Einstein à l\'intérieur) une minute en avance dans le temps, sous l\'œil effaré de Marty qui filme la scène avec son caméscope.La caisse contenant le plutonium utilisé par Doc pour la DeLorean dans le film.À l\'issue de l\'expérience qui voit le retour de la voiture et d\'Einstein sains et saufs, Doc explique à Marty que sa machine à voyager dans le temps a besoin de plutonium pour alimenter en énergie le « convecteur temporel » de la DeLorean — le dispositif qui permet le voyage dans le temps —, le convecteur ayant besoin de 1,21 gigawatts (2,21 « gigowatts » en VFNote 1)Note 2 de puissance électrique pour fonctionner. Après l\'avoir équipé comme lui d\'une combinaison anti-radiations et d\'un masque à gaz, Doc refait le « plein » en plutonium de la machine (se servant d\'une pastille de plutonium qu\'il sort d\'une caisse) en prévision du voyage dans le temps qu\'il s’apprête à effectuer.Mais, juste après, des terroristes libyens surgissent en fourgonnette et abattent Doc car celui-ci les avait trompés en leur subtilisant le plutonium, qu\'il devait au départ utiliser pour leur fabriquer une bombe. Marty, qui s\'était caché, s\'échappe avec la DeLorean poursuivi par les Libyens. Mais, lors de la poursuite, il met involontairement en marche les circuits temporels de la voiture et franchit la barre des 88 miles par heure (141,62 km/h) — la vitesse nécessaire pour activer le convecteur temporel — et se retrouve projeté à Hill Valley à la dernière date entrée par Doc sur le boîtier de contrôle du convecteur temporel, cette date correspondant au matin de la révélation qui l\'a amené à créer celui-ci… le 5 novembre 1955.Marty « atterrit », trente ans en arrière, dans la grange d\'un fermier, le vieux Peabody qui, le prenant pour un Martien du fait de sa tenue étrange (combinaison anti-radiations jaune avec un énorme casque et un masque à gaz), lui tire dessus au fusil de chasse après que son fils (tenant un comic book de science-fiction) lui ait affirmé qu\'il était un martien ayant pris forme humaine. Affolé, Marty s\'enfuit à bord de la DeLorean.Décor du « Lyon Estate », lieu de résidence de la famille McFly dans le film.Déboussolé, Marty poursuit sa route puis, reprenant ses esprits, freine brutalement alors qu\'il arrive devant le « Lotissement Lyon » (« Lyon Estates »), le lieu où il habite avec sa famille en 1985, à cette époque encore en construction et perdu en pleine campagne. C\'est alors que la voiture cale, refusant de redémarrer ; Marty la cache derrière une grande pancarte. Puis, il se rend à pied en ville où il croise ses parents qui, en 1955, sont encore des adolescents.Tout d\'abord, il rencontre dans un café son père George et, juste après, le sauve d\'un accident de la circulation en étant renversé à sa place par la voiture de son futur grand-père maternel. Tombant inconscient, Marty se réveille le soir même, neuf heures plus tard, dans la chambre de sa mère, Lorraine Baines, à cette époque une adolescente en fleur. Mais Marty se rend rapidement compte, à son grand effarement, que sa mère est tombée amoureuse de lui. Invité à rester manger chez les Baines, Marty part en catastrophe quand sa mère (qui ne sait évidemment pas qu\'il est son futur fils) commence à le draguer avec insistance.Essayant avant tout de retourner en 1985, Marty se rend ensuite à l\'adresse de Doc Brown en 1955, pour le convaincre de l\'aider. Surmontant ses sarcasmes (le Doc de 1955 le prenant pour un fou), Marty lui montre la DeLorean. Après réflexion, Doc se rend compte qu\'il ne peut pas renvoyer Marty en 1985 car, en 1955, il est impossible de se procurer le plutonium nécessaire au convecteur temporel. Mais, quand Doc dit à Marty que seule la foudre pourrait produire une telle énergie, Marty lui répond qu\'il sait, grâce à un prospectus de 1985 que la foudre va s\'abattre dans une semaine sur le clocher de l\'Hôtel de ville, et amène Doc à envisager une solution. Après avoir défendu à Marty de ne rien faire durant cette semaine qui risquerait de perturber la trame temporelle, Doc apprend que celui-ci a déjà rencontré ses futurs parents et qu\'il a donc déjà commencé à modifier l\'avenir. Incidemment, les deux découvrent que cette intervention fait peu à peu disparaître Marty, son frère et sa sœur, d\'une photo de famille que Marty avait montrée à Doc et que, si cela continue, Marty ne tardera pas à être « effacé de la réalité ». Marty a alors une semaine devant lui pour faire en sorte que ses parents tombent amoureux afin que lui, son frère et sa sœur puissent naître, avant de repartir à son époque.La Ford 46 de Biff Tannen dans le film.Le lendemain, Marty revoit son père et tente de le convaincre d\'aller à la « Féerie dansante des Sirènes » (le bal du lycée) avec sa mère, alors que celle-ci est déjà tombée amoureuse de Marty et que Biff Tannen (qui tyrannisait aussi George à l\'époque) a des vues sur Lorraine. Dans un premier temps, George, intimidé, refuse d\'essayer de sortir avec elle. Mais Marty, usant d\'un stratagème durant la nuit — déguisé avec sa combinaison anti-radiations en Dark Vador — menace George de lui faire fondre la cervelle s\'il n\'invite pas Lorraine au bal. Il aide ensuite George à draguer Lorraine dans un café, mais Biff arrive, interrompt sa tentative et menace George. Marty provoque alors Biff et sa bande. Ceux-ci, en voulant le poursuivre en voiture, heurtent un camion transportant du fumier sous lequel ils sont ensevelis. Lorraine, impressionnée, suit alors Marty jusqu\'à l\'atelier de Doc (que Marty lui présentera comme étant son oncle) et lui demande d\'être son cavalier au bal sous les yeux de Doc, témoin de la scène. Cependant, Marty accepte, imaginant un scénario où il se fera mettre KO par George après que Marty se sera montré trop entreprenant avec Lorraine avant le bal, dans la voiture garée sur le parking du lycée.Le soir du bal, Marty, assis dans la voiture avec Lorraine, attend la venue de George pour appliquer le scénario qu\'ils ont prévu ensemble. Mais sa mère, sous le charme de Marty, l\'embrasse contre son gré ; cependant, celle-ci se rend compte que quelque chose ne va pas, ayant l\'impression d\'embrasser son propre frère. Sur ces entrefaites survient Biff, furieux contre Marty à cause de l\'épisode du fumier alors que Marty pensait que c\'était George qui arrivait. Dans un premier temps, Biff veut se battre avec Marty mais, en voyant Lorraine dans la voiture, il remet Marty à ses amis (qui l\'enferment dans le coffre de la voiture des musiciens du bal, non loin de là) et tente de violer Lorraine. C\'est à ce moment que George arrive : ne reconnaissant pas Biff dans la voiture, il est surpris lorsque celui-ci se retourne et lui ordonne de partir. Mais George, pour la première fois de sa vie, décide de lui tenir tête. Biff sort alors de la voiture et lui fait une clé de bras. Lorraine, en essayant d\'aider George, est jetée à terre par Biff qui se moque d\'elle. Voyant cela, George se met en colère et trouve la force d\'infliger à Biff un violent coup de poing, mettant ce dernier KO. Relevant Lorraine (qui tombe sous son charme), George l\'emmène alors au bal. Pendant ce temps, les musiciens essaient de libérer Marty du coffre de leur voiture. Dans la manœuvre, le chanteur-guitariste se blesse à la main avec un tournevis. Marty sort finalement du coffre et arrive juste à temps pour voir George mettre son coup de poing à Biff.Puisque le musicien blessé ne peut plus jouer de la guitare, Marty se propose de le remplacer afin que le bal ait bien lieu et que ses parents puissent amorcer leur histoire d\'amour. Durant la danse des deux tourtereaux, George se fait pousser par un autre danseur, le séparant de Lorraine et provoquant le début de l’effacement temporel de Marty. Mais George, au dernier moment, repousse l\'intrus et se décide à embrasser Lorraine, sauvant ainsi Marty, son frère et sa sœur, qui réapparaissent sur la photo. À la fin de la chanson, Marty, rendu joyeux par cet heureux dénouement se laisse convaincre de jouer une dernière chanson, beaucoup plus rythmée. Il interprète alors Johnny B. Goode tandis que le chanteur blessé du groupe qui se nomme Marvin Berry, appelle son cousin Chuck pour lui faire écouter un « son nouveau ». À la fin du morceau, Marty passe du style de Berry à celui de Jimi Hendrix (en jouant derrière sa tête) puis se déhanche au sol tout en jouant sous le coup de l\'excitation, pour finalement s\'arrêter sur une note aiguë et saturée. Il dit alors au public, effaré par son attitude, qu\'ils ne sont « pas encore prêts » pour ce genre de musique et s\'esquive de la scène.Décor de la façade de l\'Hôtel de ville de Hill Valley dans le film, avec son horloge.Après avoir donné un conseil à ses parents concernant leur comportement face à leurs futurs enfants, Marty se rend à l’Hôtel de ville où Doc a tout planifié pour le voyage temporel. Quand Marty veut le prévenir qu\'il sera assassiné en 1985, Doc refuse et déchire la lettre que Marty avait écrite à ce sujet. C\'est alors que l\'orage provoque la déconnexion d\'un câble reliant le dispositif de la DeLorean à l\'horloge de l\'hôtel de ville. Pressé par le temps, Doc court remettre le câble en place pendant que Marty se rend en voiture à l\'endroit d\'où il devra démarrer, au bon moment, pour atteindre les 88 miles à l\'heure lorsque la foudre tombera sur le dispositif alimentant la DeLorean en énergie. Malgré les difficultés, Doc parvient à reconnecter les câbles juste à temps et Marty, au volant de la voiture, retourne en 1985.Cependant, avant de quitter 1955, Marty avait modifié les réglages du convecteur temporel pour se donner quelques minutes en plus, espérant arriver en 1985 à temps pour prévenir Doc avant qu\'il ne soit tué par les Libyens. Mais le timing s\'avère être quand même trop juste et Marty assiste de nouveau, impuissant, à la mort de Doc. Puis il voit son double de 1985 se rendre lui aussi dans le passé au volant de sa DeLorean, et les Libyens qui le poursuivaient avoir un accident. Par chance, quand il arrive près du corps de Doc, Marty s\'aperçoit que celui-ci est vivant : Doc avait recollé puis lu la lettre de Marty de 1955 et avait, en prévision, revêtu par sécurité un gilet pare-balles.Quittant ensuite les lieux, Doc ramène Marty chez lui en pleine nuit et, avant de le laisser, lui annonce son intention de se rendre 30 ans dans le futur. Marty lui suggère de lui rendre visite à cette époque et de faire attention.Le lendemain, Marty remarque des changements chez lui : la maison est beaucoup mieux meublée ; son père George — qui est maintenant un écrivain de science-fiction à succès — a plus d\'assurance ; sa mère Lorraine est en bien meilleure santé et heureuse de son mariage ; son frère et sa sœur ont également une vie bien plus attrayante. Par contre Biff, qui n\'est plus le chef de George mais un garagiste, respecte et craint son père. Enfin, Marty possède maintenant le 4x4 dont il avait rêvé avant de partir en 1955. Pendant qu\'il admire son véhicule, Jennifer, sa petite amie, lui rend visite et Marty ne cache pas son soulagement de la revoir après tout ce temps (bien que, pour elle, seule une journée ait passé).Tout à coup, la DeLorean surgit dans la rue ; Doc, bizarrement vêtu, en descend et dit à Marty de venir avec lui car il faut faire quelque chose pour ses enfants, à lui et à Jennifer. Montant dans le véhicule avec sa petite amie, Marty fait remarquer à Doc que la route est trop courte pour atteindre les 88 miles à l\'heure. Mais Doc lui répond que, là où ils vont, ils n\'ont « pas besoin de route » ; la DeLorean se met alors à décoller et part en volant vers le futur...'),
(3, 'Retour vers le futur 2', 1989, 'https://fr.web.img3.acsta.net/pictures/22/07/22/15/26/3322260.jpg', 'Lors de son premier voyage en 1985, Marty a commis quelques erreurs. L\'avenir qu\'il s\'était tracé n\'est pas si rose, et son rejeton est tombé sous la coupe du voyou Griff Tannen, qui veut régner sur la ville.', 'https://www.youtube.com/embed/5LnPaD-jHdI', 'Après s\'être involontairement retrouvé projeté en 1955 à bord d\'une voiture équipée d\'une machine à voyager dans le temps, le héros Marty McFly est de retour à son époque en 1985, mais constate les changements apportés à sa vie et à sa famille, conséquence des modifications qu\'il a effectuées dans le passé dans le premier opus, modifiant les évènements de 1955 et donc affectant son présent en 1985.\n\nLe retour de Doc : voyage en 2015\nAlors qu\'il vient de retrouver sa petite amie Jennifer, arrivée chez lui, Marty reçoit la visite surprise de son ami, le docteur Emmett Brown, surnommé « Doc » (l\'inventeur de la machine à voyager dans le temps), qui débarque devant la maison de ses parents au volant de la DeLorean que Marty avait utilisé pour aller en 1955 et en revenir.\n\nDoc, habillé bizarrement et apparemment affolé, informe Marty et Jennifer qu\'il vient de visiter le futur et que leur descendance est en danger. Insistant pour qu\'ils l\'accompagnent, Doc souhaite emmener Marty et Jennifer trente ans dans le futur, en 20151 afin d\'empêcher le pire : leur fils, Marty McFly Junior, s\'apprête en effet bien malgré lui à être le complice de Griff Tannen (le petit-fils de Biff Tannen, l’antagoniste du premier film) dans une tentative de vol ratée au centre commercial de Hill Valley. Doc les informe que cet évènement produira une catastrophe en chaine, conduisant à sa propre arrestation. Grimpant à bord du véhicule, les trois compères décollent et la DeLorean part dans une gerbe d\'étincelles vers le futur.\n\nMais, à peine arrivés en 2015, Doc se voit obligé d\'endormir Jennifer car il a peur que sa présence affecte trop le futur (Jennifer demandant à Doc des détails sur son mariage avec Marty), mais aussi pour permettre à Marty d\'accomplir sa tâche discrètement et sans encombre.\n\n\nCosplay de Marty McFly avec sa tenue futuriste de 2015.\n\nLe hoverboard utilisé par Marty dans le film.\nArrivés au centre-ville de Hill Valley, Doc explique à Marty qu\'il doit se rendre dans un café à l\'ancienne, le « Café 80’ » et, sous l\'apparence de son fils Marty Junior, indiquer à Griff son refus de coopérer au hold-up prévu. Cependant, alors qu\'il entre dans l\'établissement, Marty voit son fils Marty Junior arriver lui-aussi dans le café. Marty parvient à prendre la place de son fils ; il refuse ensuite de faire le hold-up et provoque le jeune Griff. Ce dernier, à la tête de sa bande, poursuit Marty qui s\'échappe en pilotant un hoverboard. La course poursuite est finalement stoppée lorsque Griff et sa bande percutent la façade de l\'hôtel de ville. Le gang est arrêté par la police. Lui montrant alors une coupure de journal, Doc explique à Marty que le futur vient d\'être modifié, car le casse n\'a pas lieu : Marty Junior n\'est pas emprisonné et sa sœur Marlene non plus en essayant de sauver son frère ; le futur de Doc Brown est aussi modifié.\n\nAlors qu\'il visite les boutiques du centre-ville pendant que Doc prépare leur retour en 1985, Marty, appâté par le gain, achète dans une boutique de souvenirs des années 1980 un almanach des sports, l\'ouvrage retraçant l\'ensemble des résultats sportifs survenus depuis les années 1950 jusque dans les années 2000, avec l\'intention de s\'enrichir lorsqu’il retournera à son époque. Mais Doc, devinant ses intentions, lui défend de le faire et lui prend l\'almanach des mains, qu\'il jette dans une poubelle sous les yeux du vieux Biff Tannen (le grand-père de Griff, devenu un vieillard à cette époque), qui passait par là.\n\nÉpiant les deux amis, Biff s\'empare de l\'almanach et suit la DeLorean depuis un taxi. Par la suite, il dérobe la voiture et s\'en sert à l\'insu de Doc et Marty, pendant que ceux-ci sont occupés à récupérer Jennifer au lotissement de Hilldale, là où Marty et Jennifer habiteront plus tard avec leurs enfants. Pendant ce temps, Biff retourne dans le passé en 1955 ; il trouve son alter ego de 1955 et lui donne l\'almanach. Puis il revient en 2015 avec la DeLorean, la déposant à l\'endroit-même où il l\'avait empruntée, sans que Doc et Marty ne s\'en aperçoivent. Mais, à son retour, Biff semble malade et s\'éloigne en titubant (il est révélé dans un scène coupée que celui-ci commence à disparaître à cause des modifications temporelles qu\'il a apporté).\n\nUn présent parallèle : le monde de Biff\nLorsque Marty et Doc reviennent en 1985, leur mission accomplie, en apparence tout est comme avant. Marty remarque cependant, quand ils déposent Jennifer (de nouveau évanouie après être tombée nez à nez avec la Jennifer de 2015) devant chez elle alors que la nuit est tombée, qu\'une des fenêtres de sa maison est maintenant munie de barreaux, un détail qu\'il n\'avait jamais remarqué auparavant.\n\n\nL\'Almanach des sports acheté en 2015 permet à Biff de devenir riche, créant un présent uchronique que Marty et Doc se doivent d\'effacer.\nLaissant Doc repartir chez lui avec la voiture, Marty retourne à pied à son domicile. Alors qu\'il tente de passer par la porte de derrière, il constate avec étonnement que celle-ci est maintenant bloquée par un cadenas. Enjambant la clôture, il arrive à la fenêtre de sa chambre, l\'escalade et pénètre dans sa chambre mais tombe nez à nez avec des gens qu\'il ne connait pas, en l\'occurrence des afro-américains, et qui semblent habiter les lieux. Chassé par les habitants comme un intrus, Marty s\'enfuit. Troublé, il découvre alors que lui, Doc et Jennifer semblent être retournés dans un 1985 différent de celui qu\'ils connaissaient. Se dirigeant vers la maison de Doc, Marty aperçoit en chemin plusieurs épaves de voitures carbonisées, ainsi qu\'une scène de crime et entend au loin des sirènes de voitures de police qui sillonnent la ville.\n\nConsultant la date d\'un journal qu\'il trouve sur le perron d\'une maison, afin de vérifier s\'il n\'est pas revenu à une mauvaise époque, Marty tombe nez à nez avec le principal Strickland, le proviseur de son lycée, qui le met en joue avec un fusil, le prenant pour un voleur. Marty, en essayant de rassurer Strickland qui étrangement ne le reconnaît pas, apprend que le lycée où il étudie en 1985 a brûlé dans un incendie en 1979, le proviseur l\'accusant alors d\'être un menteur. Alors qu\'il menace Marty de l\'abattre s\'il ne déguerpît pas de son perron, une voiture de voyous armés passe devant la maison, ouvrant le feu sur Strickland. Profitant de la fusillade, Marty s’enfuit.\n\nSe dirigeant vers la place de l\'hôtel de ville, Marty s\'aperçoit avec horreur qu\'il est maintenant dans un Hill Valley bien différent de celui qu\'il connait : Hill Valley est devenu « Hell\'s Valley » (« la vallée de l\'enfer »), une ville cauchemardesque, refuge de criminels et de crapules entièrement aux ordres de Biff Tannen, devenu dans cette réalité un richissime homme d\'affaires qui a construit sa fortune en pariant avec succès aux jeux d\'argent et paris sportifs. Il apprend également que sa mère Lorraine a épousé Biff, et vit maintenant avec lui dans l\'imposant hôtel-casino que Biff s\'est fait construire à la place du vieil hôtel de ville. Assommé par les bras droits de Biff, Marty se réveille auprès de sa mère. C\'est alors qu\'arrive Biff, qui se dispute avec Marty, le croyant toujours être en train d’étudier dans une école privée en Suisse. Lorraine voulant partir, Biff le menace de lui couper les vivres, de résilier les cartes de crédits de sa fille Linda et de faire valser la liberté conditionnelle de son autre fils Dave. Lorraine cède au chantage de Biff, qui s\'en va. Interrogeant sa mère, Marty apprend que son père Georges McFly a été tué « accidentellement » le 15 mars 1973 et que sa dépouille repose au cimetière de la Vieille Charité de la ville.\n\nSe rendant au cimetière, Marty trouve la tombe de son père et rencontre Doc, qui lui explique toute l\'histoire. Les deux amis (et Jennifer) sont bien rentrés en 1985, mais dans un 1985 parallèle à celui qu\'ils connaissaient. Juste après, Doc, en inspectant la DeLorean, retrouve le pommeau de la canne du vieux Biff, ainsi que le sachet et le ticket de caisse de l\'almanach des sports de la boutique de 2015. En fouillant dans les archives de la bibliothèque municipale, ils découvrent les articles de presse de 1958 concernant l\'ascension fulgurante du jeune Biff ; sur une photo, ils le voient avec l\'almanach des sports dans sa poche. L\'effet de Biff sur l\'Histoire a affecté le monde entier : dans cette version de l\'Histoire, la Guerre du Viêt Nam était toujours en cours en mai 1983. Biff a également aidé Richard Nixon à rester président des États-Unis, au moins jusqu\'en 19852.\n\nComprenant comment le Biff de cette réalité a réussi à devenir millionnaire en trichant avec l\'almanach, Doc demande à Marty de se renseigner auprès de Biff pour savoir dans quelles circonstances précises et dans quel lieu le vieux Biff lui a donné l\'almanach. Il lui explique également qu\'il ne peut pas empêcher le vieux Biff de revenir dans le passé, car cette réalité parallèle où ils sont maintenant existe en plus de leur propre réalité : s\'ils retournaient maintenant dans le futur, ils iraient dans un futur parallèle, toujours dominé par Biff et non dans le futur de leur propre réalité.\n\nDe retour à l\'immeuble imposant de Biff, Marty provoque ce dernier, lui demandant de but en blanc des informations concernant l\'almanach.\n\nRetour vers le passé\nBiff, n\'ayant pas peur de révéler la vérité, explique alors à Marty qu\'il a reçu l\'almanach des sports des mains du vieux Biff le 12 novembre 1955 (le jour où Marty est reparti en 1985 dans le premier film). Malheureusement, le vieux Biff l\'avait prévenu qu\'un savant ou qu\'un gamin pourraient un jour lui poser des questions au sujet de ce précieux livre et que, dans ce cas, il devrait les éliminer. Attaqué, Marty réussit à échapper à Biff et sa bande, Doc le sauvant de justesse avec la DeLorean. Racontant à Doc tout ce que Biff lui a révélé, les deux amis repartent dans le passé, le matin du 12 novembre 1955.\n\nEn 1955, Marty repère en ville le jeune Biff Tannen et se glisse en cachette à l\'arrière de sa voiture. Il assiste alors à l\'arrivée du vieux Biff, qui donne au jeune Biff l\'almanach en lui expliquant son pouvoir. Enfermé avec la voiture de Tannen dans le garage de ce dernier, il attend le soir que Biff revienne chercher sa voiture pour aller au bal du lycée. Marty voit alors son père, le jeune George McFly, étendre Biff KO et en profite pour lui voler l\'almanach.\n\nMalheureusement, Biff retrouve Marty et s\'empare à nouveau du livre. Marty se rend ensuite sur le toit du lycée, d\'où vient le chercher Doc avec la DeLorean volante et lui explique que Biff lui a repris l\'almanach. Suivant la voiture de Biff avec la DeLorean conduite par Doc qui vole derrière lui, Marty se sert de l\'hoverboard qu\'il avait ramené de son voyage dans le futur pour reprendre l\'almanach à Biff, juste avant que la voiture de celui-ci ne percute (pour la seconde fois de la saga) un camion rempli de fumier. Un orage étant en train d\'éclater, Marty, sous les ordres de Doc qui essaie de faire atterrir la DeLorean, brûle l\'almanach. Tout semble rentrer dans l\'ordre.\n\nMais, tout à coup, un éclair jaillit et frappe la DeLorean de plein fouet alors que celle-ci plane toujours dans les airs, faisant disparaître la voiture et Doc. Marty, désespéré, croyant la DeLorean détruite et son ami disparu, est persuadé qu\'il ne pourra plus retourner en 1985 seul. Mais c\'est alors qu\'il voit arriver une voiture qui surgit de l\'obscurité ; le conducteur qui en sort lui explique être un coursier et qu\'il a une lettre pour un certain « Marty McFly ». Contre toute attente, il s\'agit d\'une lettre de Doc, dans laquelle celui-ci explique à Marty qu\'il est vivant et en bonne santé et qu\'il a été projeté à cause de l\'éclair en 1885.\n\nLa dernière scène du film montre Marty qui est retourné vers le Doc de 1955 (celui qui vient d\'assister au départ de Marty pour 1985 dans le premier film) et qui lui explique qu\'il est « de retour du futur ». Le Doc de 1955, ébahi par cette apparition, finit par s\'évanouir après avoir prononcé son expression favorite « Nom de Zeus ! », Marty essayant de le réanimer.'),
(4, 'Retour vers le futur 3', 1990, 'https://fr.web.img2.acsta.net/pictures/22/07/22/15/33/2823541.jpg', 'Marty McFly est coincé en 1955, car Doc s\'est retrouvé propulsé en plein Far West, où il s\'est établi comme maréchal-ferrant, après que la foudre s\'est abattue sur la DeLorean.', 'https://www.youtube.com/embed/DTdBq1fQOBU', 'Départ pour le Far West\r\nQuelques instants après avoir vu Doc Brown disparaître avec la DeLorean, frappé d\'un éclair, Marty est abordé par un coursier en voiture en 1955. Celui-ci lui annonce qu\'il a reçu pour consigne de se rendre en ce lieu précis et à cette date précise, à la recherche d\'un certain « Marty McFly ». Il donne ensuite à Marty une lettre, postée depuis soixante-dix ans.\r\n\r\nEn lisant la lettre, qui s\'avère être écrite par Doc, Marty apprend que celui-ci a été projeté à cause de l\'éclair dans le passé, en 1885, en plein Far West. Dans sa lettre, Doc lui indique qu\'il va bien et qu\'il s\'est établi comme maréchal-ferrant à Hill Valley. Il conseille à Marty de retrouver son double de 1955 pour que celui-ci l\'aide à repartir en 1985, grâce à la DeLorean qu\'il a cachée en 1885 dans une ancienne mine d\'argent1.\r\n\r\nMarty retourne alors voir le Doc de 1955, juste après où celui-ci vient de renvoyer le Marty du premier épisode vers l\'année 1985. Frappé de stupeur devant cette apparition, le Doc de 1955 s\'évanouit ; Marty le ramène à son manoir.\r\n\r\nLe lendemain, le jeune homme explique à Doc toutes les péripéties de l\'épisode II. Les deux partent ensuite à la recherche de la DeLorean cachée, enfermée par les soins de Doc en 1885 derrière le mur d\'une galerie minière, frappé de ses initiales « ELB ». La voiture est presque intacte ; seule la puce électronique de régulation du circuit temporel est inutilisable, grillée à cause de l\'éclair. Mais, peu après, dans le cimetière attenant à la mine, Marty tombe nez à nez avec la tombe de Doc, qui a apparemment été assassiné une semaine seulement après l\'écriture de sa lettre, par Buford « Molosse » Tannen, un ancêtre de Biff Tannen. Marty décide, malgré les ordres de Doc lui disant de ne pas venir le retrouver, d\'aller à cette époque pour le sauver, en arrivant cinq jours avant son assassinat pour avoir le temps de le prévenir.\r\n\r\n\r\nLa DeLorean réparée avec les composants de 1955.\r\nGrâce au schéma qui a été laissé à dessein par Doc en 1885 dans sa lettre, le Doc de 1955 arrive à remplacer la puce endommagée de la DeLorean à partir de composants électroniques de 1955. Plaçant la « puce » reconstituée sur le capot avant de la voiture (le dispositif étant maintenant imposant, contrairement à la puce originelle de 1985 qui était minuscule) et lui installant des roues neuves de 1955, la machine à voyager dans le temps de la DeLorean est de nouveau fonctionnelle. Le Doc de 1955 aide ensuite Marty à se rendre en 1885.\r\n\r\nLe « cas » Molosse Tannen\r\nÀ peine arrivé en 1885 dans une vallée désertique et aride, Marty échappe de justesse à une attaque d\'Indiens à chevaux. Il constate ensuite peu après qu\'une durite d\'alimentation en essence de la DeLorean a été percée par une flèche des Indiens, mettant la voiture en panne sèche et l\'empêchant d\'utiliser le véhicule pour se déplacer.\r\n\r\nCachant la DeLorean dans une grotte (qui se révèle occupée par un ours noir), il se rend ensuite à pieds vers Hill Valley. Mais, à la suite d\'une chute, il tombe inconscient et est retrouvé par un de ses ancêtres, un fermier irlandais immigré nommé Seamus McFly qui le ramène chez lui. Marty, émergeant à nouveau du sommeil, fait la connaissance de la famille de Seamus : sa femme Maggie et leur fils William, son arrière-grand-père et le premier McFly né sur le territoire américain. Afin de cacher sa véritable identité et ses intentions, Marty se présente avec un nom d\'emprunt, se faisant appeler « Clint Eastwood ».\r\n\r\nSe rendant ensuite à Hill Valley, Marty rencontre par inadvertance le bandit Buford Tannen dans le saloon de la ville. Malheureusement, celui-ci projette de le pendre quand Marty le ridiculise en lui projetant un seau plein de crachats au visage, et surtout quand il l\'appelle par son sobriquet de « molosse », ce que Buford déteste. Mais, au dernier moment Doc arrive sur les lieux et le sauve de justesse grâce à un tir d\'un fusil à lunette de sa fabrication, et fait déguerpir Tannen et sa bande par la même occasion. Les deux amis se retrouvent enfin.\r\n\r\nMarty découvre que Doc passe des jours heureux en 1885 en tant que maréchal-ferrant, ayant grâce à ses talents acquis une bonne réputation en ville. Il fait part à Doc de l\'imminence de sa mort par Tannen, et du fait que la DeLorean a perdu son carburant à cause de son réservoir percé. Mais la tâche de Marty est compliquée par le fait que Doc a eu un coup de foudre pour une femme, Clara, une institutrice nouvellement arrivée en ville que Doc a sauvée d\'un accident mortel, modifiant ainsi le cours de son histoire.\r\n\r\n\r\nParmi d\'autres hommages aux grands westerns, le film dévoile au public le Hill Valley de 1885 de la même manière que la ville de Flagstone dans Il était une fois dans l\'Ouest (1965).\r\nMalgré tout, Doc et Marty essayent de trouver le moyen de rentrer en 1985. Dans un essai malheureux, en versant du whisky dans le réservoir d\'essence de la DeLorean, le système d\'injection de la voiture explose et, par conséquent, le moteur. Par chance, le générateur de fusion (permettant d\'activer la machine à voyager dans le temps) est intact. Les deux amis trouvent ensuite un moyen pour déplacer la DeLorean : le train à vapeur ; la voiture devra se faire pousser par le train jusqu\'à un pont dont la construction n\'est pas encore achevée en 1885 (mais qui le sera en 1985). Selon les calculs de Doc, la voiture atteindra les 88 miles à l\'heure requis (pour activer le convecteur temporel de la machine) juste avant que la locomotive ne tombe dans le précipice du pont inachevé.\r\n\r\nUn soir, alors que Marty et Doc assistent à la kermesse de Hill Valley accompagnés de Clara, Buford Tannen arrive sur les lieux et tente de tuer Doc, mais Marty le sauve de justesse en lançant un plat à tarte (comme un frisbee, qui est d\'ailleurs aussi le nom de la marque du plat) sur le derringer que brandit Tannen, lui faisant rater son tir. Ivre de colère, Tannen provoque Marty en duel en cherchant à jouer sur son orgueil, en lui disant qu\'il « a les foies ». Ne pouvant aller contre son instinct et stimulé par cette provocation, Marty accepte le duel contre Tannen, choisissant comme date le jour où Doc et Marty ont prévu de repartir en 1985, espérant ainsi échapper au « Molosse ».\r\n\r\nLe lendemain, Marty fait part à Doc de la honte que Tannen lui a infligée devant tous les habitants de Hill Valley en l\'insultant. Mais Doc, qui est allé dans le futur (dans le premier épisode), le met en garde (sans pouvoir lui révéler les détails) qu\'à force de répliquer à chaque fois qu\'on l\'insulte, cela le conduira à avoir un accident dans le futur.\r\n\r\nLa veille du départ pour 1985, Doc déclare soudainement à Marty qu\'il n\'a pas l\'intention de le suivre, mais qu\'il a décidé de rester ici avec Clara, étant tombé profondément amoureux d\'elle. Mais quand Marty lui rappelle qu\'il peut encore se faire tuer par Tannen le lendemain, Doc accepte finalement de repartir avec lui. Durant la nuit, pendant que Marty dort, Doc se rend chez Clara pour lui faire ses adieux, et décide de lui dire toute la vérité. Mais Clara ne le croit pas et, pensant qu\'il se moque d\'elle, se met en colère contre lui. Rendu malheureux par ce dénouement, plus rien ne retient alors le pauvre Dr Brown en 1885.\r\n\r\nLe lendemain, Marty se rend compte que Doc n\'est pas rentré dormir, puis le retrouve au comptoir du saloon de Hill Valley, un verre de whisky à la main (qu\'il n\'a toujours pas bu), en train de parler aux habitués du bar d\'un air mélancolique. Doc lui raconte que Clara l\'a délaissé. Au moment où ils s\'apprêtent à partir, Doc boit son verre cul sec sans réfléchir ; mais, ne tenant pas l\'alcool, il s\'effondre comme une masse. Grâce au barman qui concocte un remède-maison, Doc est ramené à la conscience et se réveille une dizaine de minutes plus tard, alors que Tannen vient d\'arriver pour le duel et donne un délai de dix secondes à Marty pour sortir du bar. Marty et Doc tentent de s\'esquiver par la porte de derrière mais ils ne vont pas bien loin, Tannen capturant Doc pendant que Marty reste caché. Au même moment, à la gare, Clara embarque dans le train pour quitter la ville et oublier le chagrin d\'amour que Doc lui a causé. Au saloon, Buford donne à Marty un délai d\'une minute pour sortir avant qu\'il n\'abatte Doc alors que, à bord du train, Clara entend la conversation de deux passagers qui parlent d\'un homme brisé par sa rupture d\'avec une femme. Comprenant qu\'il s\'agit de Doc, Clara arrête le train en marche, en tirant le signal d\'alarme, et repart en courant en direction de la ville.\r\n\r\nMarty surgit finalement dans la grand rue et demande à Tannen de régler leur affaire « entre hommes », à mains nues, déposant à terre son ceinturon avec son revolver. Mais Tannen, déloyal, refuse et ouvre le feu sur Marty. Ce dernier s\'effondre à terre. Pourtant, malgré les apparences, Marty est toujours bien vivant, s\'étant confectionné un gilet pare-balles de fortune avec la portière d\'un poêle à bois en fonteNote 1. Il frappe alors le bandit plusieurs fois et le met KO, avant que Tannen (pour la dernière fois de la série) ne tombe dans un chariot de fumier. Marty et Doc quittent ensuite la ville à cheval, ratant de peu Clara qui a rejoint la ville, celle-ci découvrant dans l\'atelier de Doc la maquette expliquant son plan pour retourner dans le futur ; Clara comprend alors que Doc ne lui a pas menti.\r\n\r\nUn retour mouvementé\r\n\r\nUne locomotive à vapeur similaire à celle utilisée dans le film.\r\nEn retard pour leur voyage retour vers 1985, Marty et Doc parviennent à rattraper le train à vapeur qu\'ils avaient prévu d\'utiliser. Au même moment, Clara s\'empare d\'un cheval de l\'atelier de Doc et tente de rattraper le train. Marty et Doc, masqués, braquent le conducteur du train, qui l\'arrête, en descend et, sur leur ordre, détache la locomotive et le tender du reste des wagons. Marty et Doc changent l\'aiguillage pour la ligne menant au ravin Shonash et amènent la locomotive à l\'arrière de la DeLorean, ce qui permettra ainsi de faire avancer la voiture. Doc a prévu trois bûches spéciales de couleur (vert, jaune et rouge) pour faire monter considérablement la chaleur de la chaudière de la locomotive à vapeur, et donc augmenter sa vitesse (ce qui, à la fin, fera exploser la chaudière).\r\n\r\nAlors que le train a été mis en marche, Doc étant dans la cabine du conducteur et Marty dans la DeLorean, Clara arrive, sans qu\'ils ne l\'aperçoivent. Lorsqu\'elle rattrape le train et s\'accroche à l\'échelle du tender, la bûche verte éclate, ce qui permet à la locomotive d\'accélérer. Doc se hâte de rejoindre Marty dans la DeLorean. La bûche jaune éclate et la locomotive prend à présent beaucoup plus de vitesse. Clara, qui a maintenant réussi à se glisser dans la cabine du conducteur, actionne le sifflet du train. Doc se retourne et la voit qui l’appelle. À cause du danger d\'explosion, ils n\'ont pas d\'autre choix que d\'emmener Clara avec eux.\r\n\r\nDoc se dirige vers Clara mais, au moment où le savant va attraper la main de la jeune femme, la bûche rouge éclate et la chaudière, qui a à présent atteint les 2 000 degrés, explose. Marty a une idée : il s\'empare de l\'« hoverboard » qu\'il avait rapporté du futur lors de l\'épisode II et l\'envoie à Doc, qui l\'attrape et sauve Clara au moment même où elle s\'apprêtait à tomber de la locomotive, les deux s\'échappant dans les airs. La DeLorean, dépassant la limite des 88 miles par heure, et est tout à coup transportée avec Marty le 27 octobre 1985, au moment précis où la locomotive tombe dans le précipice du pont.\r\n\r\nRetour dans le présent\r\nRevenu en 1985 sur la voie ferrée maintenant terminée, Marty échappe de justesse à une collision avec un train de marchandises qui arrive en face de lui, étant obligé de sauter de la DeLorean qui est détruite sous ses yeux. Rentré chez lui pour prendre son 4×4, Marty va chercher sa petite amie Jennifer, qu\'il avait laissé dans l\'épisode II endormie chez elle sur le perron de sa maison. Une fois réveillée, celle-ci lui fait part dans la voiture des choses bizarres qu\'elle a vu du futur.\r\n\r\nPeu après, Needles (une connaissance de Marty, et son collègue de bureau en 2015) et sa bande arrivent en 4x4 à la hauteur du véhicule de Marty, arrêté à un feu rouge. Needles propose à Marty de faire la course. Marty refuse tout d\'abord mais Needles arrive à le provoquer en lui disant qu\'il a peur. Quand le feu passe au vert, Needles part comme un boulet de canon ; cependant, Marty met la marche arrière, laissant Needles partir devant. Juste après, Marty se rend compte que s\'il avait accepté le défi de Needles, il aurait percuté une Rolls-Royce qui arrivait d\'une rue adjacente au même moment, coupant sa trajectoire.\r\n\r\nCette réflexion rappelle à Jennifer ce qu\'elle a entendu dans le futur en 2015 (dans le second épisode), quand la mère de Marty avait parlé d\'un accident de voiture entre lui et une Rolls-Royce trente ans plus tôt. Voulant alors montrer à Marty sa future lettre de licenciement qu\'elle a conservé, le texte original « Vous êtes viré ! » disparaît, laissant une page blanche. Marty comprend à ce moment ce que Doc lui avait avoué en 1885 quand il lui avait révélé par inadvertance que ses désastres futurs étaient causés par son impulsivité, qu\'il ne parvenait pas à canaliser.\r\n\r\nJennifer étant toujours intriguée par cette vision du futur, Marty décide de lui dire la vérité. Ils se rendent ensuite tous les deux à l\'endroit où le train a percuté la DeLorean. Alors qu\'ils se remémorent Doc, la sonnerie du passage à niveau retentit et les barrières se baissent, bien qu\'aucun train ne soit sur la voie. Mais, soudainement, une triple détonation retentit, projetant Marty et Jennifer en arrière. Immédiatement après, un étrange train à vapeur apparaît sur la voie : en émerge Doc, qui a réussi à reconstruire une machine à voyager dans le temps à partir d\'un train, et qui fonctionne à la vapeur. Doc est accompagné de Clara, désormais son épouse, du chien Einstein récupéré en 1985 et de leurs deux enfants : Jules et Verne (baptisés ainsi en raison de leur passion commune pour le romancier Jules Verne). Doc remet à Marty une épreuve de la photographie les montrant tous deux posant devant l\'horloge en 1885, en souvenir de leurs aventures.\r\n\r\nJennifer interroge alors Doc sur la signification du message « Vous êtes viré ! » qui s\'est effacé. Doc lui explique que le futur n\'est jamais écrit d\'avance et qu\'il n\'est que ce que l\'on en fait. Finalement, après avoir dit au revoir à Marty et Jennifer, le train de Doc et sa famille décolle et disparaît dans une autre époque.');

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
(2, 2),
(3, 2),
(4, 2),
(2, 3),
(3, 3),
(4, 3),
(2, 8),
(3, 8),
(4, 8),
(2, 9),
(4, 9),
(3, 12),
(4, 12),
(2, 13),
(4, 13),
(2, 14),
(3, 14),
(4, 14),
(2, 15),
(3, 15),
(4, 15),
(2, 16),
(3, 16),
(4, 16),
(2, 18),
(3, 18),
(4, 18),
(4, 19),
(3, 20),
(4, 20);

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
(1, 2, 'https://resize-elle.ladmedia.fr/rcrop/638,,forcex/img/var/plain_site/storage/images/loisirs/cinema/dossiers/que-sont-ils-devenus-les-acteurs-de-retour-vers-le-futur/52160496-1-fre-FR/Que-sont-ils-devenus-les-acteurs-de-Retour-vers-le-futur.jpg'),
(2, 2, 'https://cdn-europe1.lanmedia.fr/var/europe1/storage/images/europe1/medias-tele/retour-vers-le-futur-que-sont-devenus-les-heros-du-film-2906756/29921987-1-fre-FR/Retour-vers-le-futur-que-sont-devenus-les-heros-du-film.jpg'),
(3, 2, 'https://www.slate.fr/sites/default/files/styles/1060x523/public/bttf.jpg'),
(4, 3, 'https://www.challenges.fr/assets/img/2007/06/01/cover-r4x3w1000-5836c90b314d8-michael-j-fox-dans-retour.jpg'),
(5, 3, 'https://imgsrc.cineserie.com/2020/12/retour-vers-le-futur-2-sur-tf1-la-reponse-geniale-de-tom-wilson-biff-quand-les-fans-l-arretent-dans-la-rue-1.jpg?ver=1'),
(6, 3, 'https://static.lpnt.fr/images/2015/01/04/3037411-w-retour-vers-le-futur2-17-jaws-19-jpg_2644698.jpg'),
(7, 4, 'https://www.telerama.fr/sites/tr_master/files/styles/simplecrop1000/public/medias/2017/05/media_158231/retour-vers-le-futur-3-en-vf-nom-de-zeus%2CM455281.jpg?itok=fChYNMaW'),
(8, 4, 'https://i.ytimg.com/vi/bkol2SYrl_g/hqdefault.jpg'),
(9, 4, 'https://www.leblogducinema.com/wp-content/uploads//2022/02/retour-vers-le-futur-3-1155x770.jpg');

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `movies_images`
--
ALTER TABLE `movies_images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
