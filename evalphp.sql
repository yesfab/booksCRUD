-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : jeu. 17 nov. 2022 à 10:48
-- Version du serveur :  5.7.34
-- Version de PHP : 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `evalphp`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE `auteur` (
  `id_auteur` int(11) NOT NULL,
  `auteur` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`id_auteur`, `auteur`) VALUES
(1, 'Stephen King'),
(2, 'Walter Isaacson'),
(3, 'J.K Rowling'),
(4, 'Frank Herbert'),
(5, 'Guy de Maupassant'),
(6, 'Victor Hugo'),
(7, 'Jules Verne'),
(8, 'Anonyme');

-- --------------------------------------------------------

--
-- Structure de la table `auteur_livre`
--

CREATE TABLE `auteur_livre` (
  `id_auteur` int(11) NOT NULL,
  `id_livre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `auteur_livre`
--

INSERT INTO `auteur_livre` (`id_auteur`, `id_livre`) VALUES
(1, 6),
(1, 8),
(1, 9),
(2, 1),
(3, 3),
(4, 4),
(5, 5),
(6, 7),
(7, 10),
(8, 2);

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

CREATE TABLE `livres` (
  `id_livre` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `synopsis` text NOT NULL,
  `id_auteur` int(11) NOT NULL,
  `date_parution` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `livres`
--

INSERT INTO `livres` (`id_livre`, `titre`, `genre`, `synopsis`, `id_auteur`, `date_parution`) VALUES
(1, 'Steve Jobs', 'Biographie', 'Suggéré par le créateur d’Apple, qui fait face à une maladie redoutable, Steve Jobs,  à partir de plus de quarante entretiens menés sur plus de deux ans et d’interviews d’une centaine de membres de sa famille, amis, rivaux, concurrents et collègues, le livre retrace l’incroyable vie et l’extraordinaire personnalité d’un génie, perfectionniste et hyperactif, qui a révolutionné les ordinateurs, les films d’animation, la musique, les téléphones, les tablettes tactiles et l’édition numérique.', 2, '2011-10-26'),
(2, 'Le livre sans nom', 'Roman policier fantastique', 'Santa Mondega, une ville d\'Amérique du Sud oubliée du reste du monde, où sommeillent de terribles secrets.\r\nUn serial killer qui assassine ceux qui ont eu la malchance de lire un énigmatique livre sans nom. La seule victime encore vivante du tueur, qui, après cinq ans de coma, se réveille, amnésique. Deux flics très spéciaux, des barons du crime, des moines férus d\'arts martiaux, une pierre précieuse à la valeur inestimable, un massacre dans un monastère isolé, quelques clins d\'oeil à Seven et à The Ring, et voilà le thriller le plus rock\'n\'roll et le plus jubilatoire de l\'année ! Diffusé anonymement sur Internet en 2007, cet ouvrage aussi original que réjouissant est vite devenu culte.\r\nII a ensuite été publié en Angleterre puis aux Etats-Unis, où il connaît un succès fulgurant.', 8, '2011-06-01'),
(3, 'Harry Potter à l\'école des sorciers', 'Roman fantaisie', 'Après la mort de ses parents (Lily et James Potter), Harry Potter est recueilli par sa tante maternelle Pétunia et son oncle Vernon à l\'âge d\'un an. Ces derniers, animés depuis toujours d\'une haine féroce envers les parents du garçon qu\'ils qualifient de gens « bizarres », voire de « monstres »16, traitent froidement leur neveu et demeurent indifférents aux humiliations que leur fils Dudley lui fait subir. Harry ignore tout de l\'histoire de ses parents, si ce n\'est qu\'ils ont été, semble-t-il, tués dans un accident de voiture17. Cependant, le jour des onze ans de Harry, un demi-géant du nom de Rubeus Hagrid vient le chercher pour l\'informer de son inscription à Poudlard, une école de sorcellerie où il est inscrit depuis sa naissance, et lui remettre sa lettre.', 3, '1998-10-09'),
(4, 'Dune', 'Roman Science-Fiction', 'Il n\'y a pas, dans tout l\'Empire, de planète plus inhospitalière que Dune. Partout des sables à perte de vue. Une seule richesse : l\'épice de longue vie, née du désert, et que tout l\'univers achète à n\'importe quel prix.\r\nRichesse très convoitée : quand Leto Atréides reçoit Dune en fief, il flaire le piège. Il aura besoin des guerriers Fremen qui, réfugiés au fond du désert, se sont adaptés à une vie très dure en préservant leur liberté, leurs coutumes et leur foi mystique. Ils rêvent du prophète qui proclamera la guerre...', 4, '1970-01-01'),
(5, 'Bel-Ami', 'Roman réaliste', 'A qui Georges Duroy doit-il son irrésistible ascension ? Aux femmes séduites par sa jeunesse et sa beauté. La petite fille de l\'une de ses maîtresses le surnommera Bel-Ami. Et ce fils d\'aubergistes normands, à Canteleu, deviendra baron Du Roy de Cantel. L\'amitié lui ouvrira la carrière journalistique. L\'amour lui donnera l\'argent et la gloire. Maupassant a été journaliste. Il a connu ce monde parisien du xixe siècle, les salles de rédaction qui font et défont les ministères, et leurs annexes, les salons mondains où naissent intrigues et liaisons. Ses portraits de femmes dévorées d\'amour ou d\'ambition, ses tableaux de la vallée de la Seine à Rouen, ses fiacres, avenue du Bois de Boulogne, sont oeuvre de peintre. Maupassant était un maître du récit.', 5, '1885-01-01'),
(6, 'Mr Mercedes', 'Roman thriller', 'Midwest, 2009. Dans l’aube glacée, des centaines de chômeurs en quête d’un job font la queue devant un salon de l’emploi. Soudain, une Mercedes fonce sur la foule, laissant huit morts et quinze blessés dans son sillage. Le chauffard, lui, a disparu dans la brume, sans laisser de traces. Un an plus tard, Bill Hodges, flic à la retraite qui n’a pas su résoudre l’affaire, reste obsédé par ce massacre. Une lettre du « tueur à la Mercedes » va le sortir de la dépression et de l’ennui qui le guettent.\r\nDélaissant le fantastique pour le polar dans lequel il se glisse avec une jubilation contagieuse, Stephen King démontre une fois de plus son talent de conteur, et son inspecteur Bill Hodges rejoint les figures emblématiques du roman noir américain.', 1, '2016-09-28'),
(7, 'Les misérables', 'Roman tragédie', 'Le destin de Jean Valjean, forçat échappé du bagne, est bouleversé par sa rencontre avec Fantine. Mourante et sans le sou, celle-ci lui demande de prendre soin de Cosette, sa fille confiée aux Thénardier. Ce couple d’aubergistes, malhonnête et sans scrupules, exploitent la fillette jusqu’à ce que Jean Valjean tienne sa promesse et l’adopte. Cosette devient alors sa raison de vivre.', 6, '1862-01-01'),
(8, 'Running Man', 'Roman d\'anticipation', 'Premier quart du xxie siècle. La dictature s’est installée aux États-Unis. La télévision, arme suprême du nouveau pouvoir, règne sans partage sur le peuple. Une chaîne unique diffuse une émission de jeux suivie par des millions de fans : c’est « La Grande Traque ». Ben Richards, un homme qui n’a plus rien à perdre, décide de s’engager dans la compétition mortelle.\r\nPendant trente jours il devra fuir les redoutables « chasseurs » lancés sur sa piste et activement aidés par une population encouragée à la délation. Tous les moyens sont bons pour éliminer Ben Richards…\r\nDans ce livre terrifiant, le maître incontesté du suspense, le grand écrivain américain Stephen King, alias Richard Bachman, nous fait vivre cette diabolique course contre la mort sans nous laisser un instant de répit. Fascinant.', 1, '1982-01-01'),
(9, 'Revival', 'Roman horreur', 'Il a suffi de quelques jours au charismatique Révérend Charles Jacobs pour ensorceler les habitants de Harlow dans le Maine. Et plus que tout autre, le petit Jamie. Car l\'homme et l\'enfant ont une passion commune : l\'électricité.', 1, '2014-11-11'),
(10, 'Voyage au centre de la Terre', 'Roman Science-Fiction', 'Dans la petite maison du vieux quartier de Hambourg où Axel, jeune homme assez timoré, travaille avec son oncle, l’irascible professeur Lidenbrock, géologue et minéralogiste, dont il aime la pupille, la charmante Graüben, l’ordre des choses est soudain bouleversé.\r\nDans un vieux manuscrit, Lidenbrock trouve un cryptogramme. Arne Saknussemm, célèbre savant islandais du xvie siècle, y révèle que par la cheminée du cratère du Sneffels, volcan éteint d’Islande, il a pénétré jusqu’au centre de la Terre !', 7, '1972-11-01');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`id_auteur`);

--
-- Index pour la table `livres`
--
ALTER TABLE `livres`
  ADD PRIMARY KEY (`id_livre`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auteur`
--
ALTER TABLE `auteur`
  MODIFY `id_auteur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `livres`
--
ALTER TABLE `livres`
  MODIFY `id_livre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
