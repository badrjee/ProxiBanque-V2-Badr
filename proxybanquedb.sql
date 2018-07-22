--
-- Base de données :  `proxibanquebdd`
--
CREATE DATABASE IF NOT EXISTS `proxibanquedb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `proxibanquedb`;

-- --------------------------------------------------------
-- Structures des tables
-- -------------------------------------------------------

--
-- Structure de la table `conseillerClientele`
--

CREATE TABLE `conseillerClientele` (
  `idPersonne` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `login` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Client`
--

CREATE TABLE `client` (
  `idPersonne` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` int(15) NOT NULL,
  `idAdresse` int(11) NOT NULL,
  `idConseillerClientele` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `adresses`
--

CREATE TABLE `adresses` (
  `idAdresse` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `adresse` varchar(45) NOT NULL,
  `codePostal` varchar(45) NOT NULL,
  `ville` varchar(255) NOT NULL,
  `idClient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `compteCourant`
--

CREATE TABLE `compteCourant` (
  `numeroDeCompte` int(20) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `solde` double(7,2) NOT NULL,
  `decouvert` double(7,2) NOT NULL DEFAULT 1000,
  `typeDeCompte`   BOOLEAN NOT NULL DEFAULT FALSE,  
  `dateOuvertureCompte` varchar(20) DEFAULT NULL,
  `idClient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `compteEpargne`
--

CREATE TABLE `compteEpargne` (
  `numeroDeCompte` int(20) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `solde` double(7,2) NOT NULL,
  `typeDeCompte`  BOOLEAN NOT NULL DEFAULT TRUE,  
  `taux` double(5,2) NOT NULL DEFAULT 0.03,
 `dateOuvertureCompte` varchar(20) DEFAULT NULL,
  `idClient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- ---------------------------------------------------------
-- Contenu des tables
-- ---------------------------------------------------------

--
-- Contenu de la table `conseillerClientele`
--
INSERT INTO `conseillerClientele` (`nom`, `prenom`, `login`, `password`) VALUES
('ZIDANE', 'Zinedine', 'zizou', 6789),
('RONALDO', 'Cristiano', 'cr7', 12345),
('MARADONA', 'Diego', 'arg', 98765);

-- ------------------------------------------------------------

--
-- Contenu de la table `Client`
--

INSERT INTO `client` (`nom`, `prenom`, `email`, `telephone`, `idAdresse`, `idConseillerClientele`) VALUES
('ROMAN', 'Steven', 'steven@gmail.com', 0769553274, 5, 2),
('BOUTRA', 'Nadir', 'nadir@gmail.com', 0625411002, 1, 1),
('SISI', 'Kamir', 'kamir@live.fr', 0699003214, 14, 2),
('USSUNET', 'Quentin', 'quentin@free.fr', 0198413564, 4, 1),
('VALLETE', 'Arnaud', 'arnaud@yahoo.fr', 0611002543, 2, 2),
('LENOIR', 'Fabien', 'fabien@orange.com', 0714638972, 6, 2),
('VOLATRON', 'Antoine', 'antoine@bbox.fr', 0618192456, 7, 2),
('LLORIS', 'Hugo', 'Hugo@gmail.fr', 0759856321, 9, 1),
('POGBA', 'Paul', 'Paul@yahoo.fr', 0687952514, 8, 1),
('GRIEZMAN', 'Antoine', 'grhom@hotmail.com', 0620140103, 16, 3),
('MENDY', 'Benjamin', 'mendy@bbox.fr', 0654796312, 11, 2),
('VARANE', 'Raphael', 'varane@gmail.com', 0100352000, 12, 3),
('RAMI', 'Adil', 'adil@live.fr', 0669845214, 15, 2),
('UMTITI', 'Samuel', 'samsam@free.fr', 0698741200, 3, 1),
('FEKIR', 'Nabil', 'fafa@yahoo.fr', 0741203025, 13, 3),
('MBAPPE', 'Kylian', 'Kylian@orange.com', 0620889944, 10, 3);

-- ------------------------------------------------------------------------------------------------------

--
-- Contenu de la table `adresses`
--

INSERT INTO `adresses` (`adresse`, `codePostal`, `ville`, `idClient`) VALUES
('13 rue gambetta', '75003', 'Paris', 1),
('25 avenue jean moulin', '93000', 'saint-denis', 2),
('47 boulevard jaures', '75008', 'Paris', 3),
('1 rue des pauvres', '75019', 'Paris', 4),
('6 avenue des fleures', '93190', 'sevran', 5),
('189 boulevard du soleil', '75012', 'Paris', 6),
('136 rue des riches', '75000', 'Paris', 7),
('34 rue de Tolbiac', '75000', 'Paris',8),
('22 Rue du Débarcadère', '93000', 'saint-denis',9),
('8 rue de la Banque', '75008', 'Paris',10),
('5 villa lourcine', '75014', 'Paris',11),
('44 rue glaciere', '93190', 'sevran',12),
('5 avene saint-michel ', '75016', 'Paris',13),
('9 place des armes', '75000', 'Paris',14),
('87 rue de la cité', '75003', 'Paris',15),
('36 boulevard marchal ', '93000', 'saint-denis',16);

-- -------------------------------------------------------------------------------------------------------

--
-- Contenu de la table `compteCourant`
--

INSERT INTO `compteCourant` (`numeroDeCompte`, `solde`, `dateOuvertureCompte`, `idClient`) VALUES
('3256940', '200', '10/02/2014', 1),
('3216941', '5300',  '14/06/2017', 3),
('3216942', '3600', '29/04/2015', 2),
('4716943', '75', '15/03/2017', 5),
('3252944', '945',  '03/09/2012', 7),
('3696945', '100', '22/11/2008', 6),
('3548618', '1000', '12/05/2015', 11),
('3265489', '2680',  '13/10/2000', 9),
('3974564', '20', '21/12/2008', 8),
('4795564', '139', '10/02/2016', 10),
('3103127', '210',  '01/07/2001', 13),
('3573673', '00', '21/9/2013', 14);

-- ----------------------------------------------------------------------------------------------------------
--
-- Contenu de la table `compteEpargne`
--

INSERT INTO `compteEpargne` (`numeroDeCompte`, `solde`, `dateOuvertureCompte`, `idClient`) VALUES
('56844126', '10','10/02/2014', 1),
('69854725', '80','29/04/2015', 2),
('69574250', '280', '22/11/2008', 6),
('32579410', '30', '10/02/2014', 4),
('57894744', '120','30/03/2015', 12),
('63537825', '1040','14/01/2004', 15),
('65767373', '2044', '02/02/2008', 10),
('32778747', '320', '09/12/2014', 16);


-- -------------------------------------------------------------------------
-- Contraintes pour les tables
-- -------------------------------------------------------------------------

ALTER TABLE `client`
  ADD CONSTRAINT `fk_conseiller` FOREIGN KEY (`idConseillerClientele`) REFERENCES `conseillerClientele` (`idPersonne`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_adresse` FOREIGN KEY (`idAdresse`) REFERENCES `adresses` (`idAdresse`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `compteCourant`
  ADD CONSTRAINT `fk_clientcc` FOREIGN KEY (`idClient`) REFERENCES `client` (`idPersonne`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `compteEpargne`
  ADD CONSTRAINT `fk_clientce` FOREIGN KEY (`idClient`) REFERENCES `client` (`idPersonne`) ON DELETE NO ACTION ON UPDATE NO ACTION;