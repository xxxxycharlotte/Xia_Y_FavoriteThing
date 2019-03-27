START TRANSACTION;

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `shortname` varchar(255) NOT NULL,
  `poster` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `descr` varchar(512) NOT NULL,
  `releasedate` date NOT NULL,
  `country` varchar(255) NOT NULL,
  `director` varchar(255) NOT NULL,
  `duration` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `characters`;
CREATE TABLE IF NOT EXISTS `characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`movie_id`) REFERENCES movies(`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

COMMIT;
