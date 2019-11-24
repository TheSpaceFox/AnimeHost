-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 18-Nov-2019 às 01:46
-- Versão do servidor: 5.7.26
-- versão do PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `animehost`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `paginas`
--

DROP TABLE IF EXISTS `paginas`;
CREATE TABLE IF NOT EXISTS `paginas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `tags` text NOT NULL,
  `poster` varchar(100) DEFAULT NULL,
  `image-large` varchar(100) DEFAULT NULL,
  `image-small` varchar(100) DEFAULT NULL,
  `estudio` varchar(50) DEFAULT NULL,
  `episodios` varchar(10) DEFAULT NULL,
  `genero` varchar(100) DEFAULT NULL,
  `sinopse` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `paginas`
--

INSERT INTO `paginas` (`id`, `nome`, `tags`, `poster`, `image-large`, `image-small`, `estudio`, `episodios`, `genero`, `sinopse`) VALUES
(1, 'Boku no Hero Academia', 'Boku no Hero Academia; My Hero Academia; One for all;', 'bokunohero1poster.jpg', 'bokunohero-large.jpg', 'bokunohero.jpg', 'Bones', '24', 'Ação, Comédia, Shounem, Escolar, Super Poderes', 'Por toda a sua vida, Izuku sonhou ser um heroi — um objetivo ambicioso para qualquer um, mas especialmente desafiador para um garoto sem superpoderes. Isso mesmo: em um mundo onde 80% da população tem algum tipo de Dom especial, Izuku teve a má sorte de nascer completamente normal. Mas isso não vai impedi-lo de se matricular em uma das academias de herois mais prestigiosas do mundo'),
(7, 'Eromanga Sensei', 'Eromanga Sensei; Sagiri, Light Novels; Lolis', 'eromangasensei.jpg', 'eromangasensei-large.jpg', 'eromangasensei.jpg', 'A-1 Pictures', '12', 'Comédia, Drama, Romance, Ecchi', 'Masamune Izumi é um estudante colegial que escreve light novels. Sagiri Izumi é uma antissocial que nunca sai de seu quarto. Um ano atrás, ela virou meia-irmã de Masamune. Mas um dia, Masamune descobre uma revelação aterradora - a artista \"Eromanga-sensei\", que ilustra seus romances, é ninguém menos que sua irmã Sagiri! Sua pequena irmãzinha antissocial, que vive debaixo do mesmo teto que ela, usa um pseudônimo picante e desenha obscenidades?! Esta comédia sobre um escritor de light novels e sua irmãzinha ilustradora traz um elenco de personagens encantadores que supera o de \"Oreimo!\"');

-- --------------------------------------------------------

--
-- Estrutura da tabela `video`
--

DROP TABLE IF EXISTS `video`;
CREATE TABLE IF NOT EXISTS `video` (
  `id_video` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_fk` bigint(20) NOT NULL,
  `nomeep` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `numep` smallint(6) NOT NULL,
  `views` int(11) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `dislikes` int(11) DEFAULT NULL,
  `link` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_video`),
  KEY `id_fk` (`id_fk`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `video`
--

INSERT INTO `video` (`id_video`, `id_fk`, `nomeep`, `numep`, `views`, `likes`, `dislikes`, `link`) VALUES
(2, 1, 'Izuku Midorya: A origem', 1, NULL, NULL, NULL, 'www.google.com'),
(3, 1, 'O pré-requisito de super-herói', 2, NULL, NULL, NULL, 'www.google.com'),
(4, 1, 'Músculos Gritantes', 3, NULL, NULL, NULL, 'www.google.com'),
(5, 1, 'Ponto de Partida', 4, NULL, NULL, NULL, ''),
(6, 1, 'O Que Posso Fazer Por Enquanto', 5, NULL, NULL, NULL, ''),
(7, 1, 'Enfureça, Nerd Maldito', 6, NULL, NULL, NULL, ''),
(8, 1, 'Deku vs Kacchan', 7, NULL, NULL, NULL, ''),
(9, 1, 'O Ponto de Partida do Bakugo.', 8, NULL, NULL, NULL, ''),
(10, 1, 'Iida-kun, Dê o Seu Melhor!', 9, NULL, NULL, NULL, ''),
(11, 1, 'Encontro Com o Desconhecido', 10, NULL, NULL, NULL, ''),
(12, 1, 'Game Over', 11, NULL, NULL, NULL, ''),
(13, 1, 'All Might', 12, NULL, NULL, NULL, ''),
(14, 1, 'No Coração de Cada Um de Nós', 13, NULL, NULL, NULL, ''),
(15, 7, 'A irmã mais nova e uma porta que nunca se abre', 1, NULL, NULL, NULL, ''),
(16, 7, 'A representante de classe com vida normal e a fada destemida', 2, NULL, NULL, NULL, ''),
(17, 7, 'A mansão dos despidos e o senhor depravado', 3, NULL, NULL, NULL, ''),
(18, 7, 'Eromanga-sensei', 4, NULL, NULL, NULL, ''),
(19, 7, 'Planejando uma light novel junto com a minha irmãzinha', 5, NULL, NULL, NULL, ''),
(20, 7, 'Izumi Masamune e seu velho inimigo de 10 milhões de cópias', 6, NULL, NULL, NULL, ''),
(21, 7, 'Minha irmãzinha e o novel mais interessante do mundo', 7, NULL, NULL, NULL, ''),
(22, 7, 'Sagiri sonhadora e fogos de artifício no verão', 8, NULL, NULL, NULL, ''),
(23, 7, 'A irmãzinha e a Ilha das Fadas', 9, NULL, NULL, NULL, ''),
(24, 7, 'Izumi Masamune e a senpai mais nova\r\n', 10, NULL, NULL, NULL, ''),
(25, 7, 'Como os dois se encontraram e futuros irmãos', 11, NULL, NULL, NULL, ''),
(26, 7, 'Eromanga Festival', 12, NULL, NULL, NULL, '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
