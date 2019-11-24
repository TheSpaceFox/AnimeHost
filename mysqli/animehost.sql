-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 24-Nov-2019 às 02:40
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `paginas`
--

INSERT INTO `paginas` (`id`, `nome`, `tags`, `poster`, `image-large`, `image-small`, `estudio`, `episodios`, `genero`, `sinopse`) VALUES
(1, 'Boku no Hero Academia', 'Boku no Hero Academia; My Hero Academia; One for all; Boku; anime ruim;', 'bokunohero1poster.jpg', 'bokunohero-large.jpg', 'bokunohero.jpg', 'Bones', '24', 'Ação, Comédia, Shounem, Escolar, Super Poderes', 'Por toda a sua vida, Izuku sonhou ser um heroi — um objetivo ambicioso para qualquer um, mas especialmente desafiador para um garoto sem superpoderes. Isso mesmo: em um mundo onde 80% da população tem algum tipo de Dom especial, Izuku teve a má sorte de nascer completamente normal. Mas isso não vai impedi-lo de se matricular em uma das academias de herois mais prestigiosas do mundo'),
(2, 'Boku no Hero Academia 2', 'Boku no Hero Academia 2;  My Hero Academia 2; Boku no Hero Academia; My Hero Academia; One for all; All myght; Midorya; anime ruim; ', 'bokunohero2poster.jpg', 'bokunohero2-large.jpg', 'bokunohero2.jpg', 'Bones', '25', 'Ação, Comédia, Shounem, Escolar, Super Poderes', 'Na UA Academy, nem mesmo um ataque violento pode atrapalhar o seu evento de maior prestígio: o festival de esportes da escola. Reconhecido em todo o Japão, este festival é uma oportunidade para os heróis aspirantes mostrarem suas habilidades, tanto para o público quanto para os possíveis recrutadores. No entanto, o caminho para a glória nunca é fácil, especialmente para Izuku Midoriya – cuja peculiaridade possui grande força bruta, mas também é ineficiente. Empurrado contra seus talentosos colegas de classe, como o fogo e o gelo que empunham Shouto Todoroki, Izuku deve utilizar sua inteligência afiada e dominar seu entorno para alcançar a vitória e provar ao mundo o seu valor.'),
(3, 'Boku no Hero Academia 3', 'Boku no Hero Academia 3;  My Hero Academia 3; One for all; All might; Midorya; anime ruim;', 'bokunohero3poster.jpg', 'bokunohero3-large.jpg', 'bokunohero3.jpg', 'Bones', '25', 'Ação, Comédia, Shounem, Escolar, Super Poderes', 'O verão está aqui e os heróis das salas A e B estão no campo de treinamento mais difícil de suas vidas! Um grupo de profissionais experientes vão forçar as individualidades dos alunos a um novo nível com um novo desafio atrás do outro. Enfrentar os elementos desse local secreto vai ser a menor de suas preocupações quando o treinamento de rotina se transforma em uma luta dura pela sobrevivência.'),
(4, 'Gamers!', 'Gamers!; Comédia Romântica; Escolar', 'gamersposter.jpg', 'gamers-large.jpg', 'gamers.jpg', 'Pine Jam', '12', 'Comédia, Romance, Escolar', '\"Quer ficar comigo... no Clube de Videogames?\" Keita Amano é um cara isolado e medíocre sem quaisquer traços interessantes de personalidade, exceto seu amor por jogos. Um dia, ele é abordado por Karen Tendo, a garota mais bonita da escola e presidente do Clube de Videogames. Esse momento muda a vida de Keita para sempre, e o transporta para uma comédia romântica com belas garotas gamers... Pelo menos, era pra ser assim.'),
(5, 'Accel World', 'Accel World; Shounem; Reki Kawahara', 'accelworldposter.jpg', 'accelworld-large.jpg', 'accelworld.jpg', 'Sunrise', '24', 'Ação, Jogo, Sci-fi, Romance, Escolar', 'Estamos em 2046, onde um menino do ensino médio chamado Haruyuki é constantemente judiado por valentões por causa de seu excesso de peso, o que o torna parecido com um porco. Durante a queda, o protagonista encontra Kuroyukihime, a garota mais bela da escola, que mudou a sua vida com um software misterioso. Haruyuki está ciente da existência de um mundo virtual chamado “Accel World”, e lá ele se torna um “Linker Bust”, um paladino particular que protege a princesa.'),
(6, 'The Quintessential Quintuplets', 'The Quintessential Quintuplets; Uesugi; Miko; Nino; Yotsuba; Ichika; Itsuki; Harém;', 'gotoubunnohanayomeposter.jpg', 'gotoubunnohanayome-large.jpg', 'gotoubunnohanayome.jpg', 'Tezuka Productions', '12', 'Harém, Comédia, Romance, School', 'Uesugi Fuutarou, um estudante do segundo ano do colegial que vem de uma família pobre, recebe uma irrecusável proposta para trabalhar como tutor... e descobre que suas pupilas são suas colegas de classe! E pra piorar, são gêmeas quíntuplas... Todas lindíssimas, mas com péssimas notas e um ódio mortal pelos estudos! Sua primeira missão será ganhar a confiança das garotas?! Todo dia é dia de festa nesta comédia romântica 500% adorável envolvendo as irmãs gêmeas da casa Nakano'),
(7, 'Eromanga Sensei', 'Eromanga Sensei; Sagiri, Light Novels; Lolis', 'eromangasensei.jpg', 'eromangasensei-large.jpg', 'eromangasensei.jpg', 'A-1 Pictures', '12', 'Comédia, Drama, Romance, Ecchi', 'Masamune Izumi é um estudante colegial que escreve light novels. Sagiri Izumi é uma antissocial que nunca sai de seu quarto. Um ano atrás, ela virou meia-irmã de Masamune. Mas um dia, Masamune descobre uma revelação aterradora - a artista \"Eromanga-sensei\", que ilustra seus romances, é ninguém menos que sua irmã Sagiri! Sua pequena irmãzinha antissocial, que vive debaixo do mesmo teto que ela, usa um pseudônimo picante e desenha obscenidades?! Esta comédia sobre um escritor de light novels e sua irmãzinha ilustradora traz um elenco de personagens encantadores que supera o de \"Oreimo!\"'),
(8, 'Kaguya-sama Love is War', 'Kaguya-sama: Love is War; Chika Fujiwara; Shirogane; Kaguya; ', 'kaguyasamaposter.jpg', 'kaguyasama-large.jpg', 'kaguyasama.jpg', 'A1-Pictures', '12', 'Comédia, Psicológico, Romance, Escolar, Seinen', 'Veio de boa família? Sim! Tem uma personalidade promissora? Sim! Todos os jovens de elite com futuros brilhantes acabam indo parar na Academia Shuchiin. E ambos os líderes do conselho estudantil, Kaguya Shinomiya e Miyuki Shirogane, estão apaixonados um pelo outro. Mas seis meses se passaram e nada aconteceu?! Ambos são orgulhosos demais para confessar seu amor, e agora ambos estão brigando pra ver quem faz o outro se declarar primeiro! A parte mais divertida do amor é o jogo da conquista! Uma nova comédia romântica, sobre as batalhas intelectuais de dois estudantes de elite apaixonados.'),
(9, 'Konosuba', 'Konosuba; Kazuma; Darkness; Aqua; Konosubarashi; Animes de Comédia; Anime curto; Anime bom\r\n', 'konosubaposter.jpg', 'konosuba-large.jpg', 'konosuba.jpg', 'Studio Deen', '10', 'Aventura; Comédia; Mágica; Fantasia; Paródia; Supernatural; Isekai; ', 'Após um acidente de trânsito, a breve e desapontadora vida de Kazuma Sato deveria ter acabado, mas ele acorda e vê uma belíssima garota diante dele. Ela diz ser Aqua, uma deusa, e lhe pergunta se ele gostaria de ir para outro mundo, levando consigo apenas uma coisa deste mundo. Kazuma decide levar a própria deusa consigo, e eles são transportados para um mundo de fantasia cheio de aventura, dominado por um rei-demônio. Agora Kazuma quer apenas viver em paz, mas Aqua quer resolver vários dos problemas deste novo mundo, e o rei-demônio não vai ignorá-los por muito tempo...'),
(10, 'Death Parade', 'Death Parade; Madhouse; ', 'deathparadeposter.jpg', 'deathparade-large.jpg', 'deathparade.jpg', 'Madhouse', '12', 'Drama, Mistério, Thriller psicológico', 'Após a morte, os humanos são mandados para a reencarnação ou para o vácuo. Mas alguns acabam indo parar no Quindecim, um bar onde um bartender misterioso de cabelos brancos, chamado Decim, trabalha.'),
(11, 'Jojo Bizarre Adventures', 'Jojo Bizarre Adventures; David Production; Animes Estranhos; Homens sarados; Jojo; Fabricio', 'jojoposter.jpg', 'jojo-large.jpg', 'jojo.jpg', 'David Production', '9', 'Ação, Aventura, Supernatural, Vampiro, Shounem', 'A saga que se inicia na Inglaterra do século XIX, contando a rivalidade entre Jonathan Joestar, um jovem aristocrata, e Dio Brando, um garoto plebeu que foi acolhido pelo pai de Jonathan quando tornou-se órfão. Insatisfeito com sua posição social, a ambição insaciável e o desejo de dominação de Dio o levam a estudar os poderes sobrenaturais de uma antiga máscara asteca de pedra presente na mansão dos Joestar - um artefato que mudará para sempre o destino de Dio e das futuras gerações dos Joestar.');

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
  `src` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_video`),
  KEY `id_fk` (`id_fk`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `video`
--

INSERT INTO `video` (`id_video`, `id_fk`, `nomeep`, `numep`, `views`, `likes`, `dislikes`, `src`) VALUES
(2, 1, 'Izuku Midorya: A origem', 1, 0, 0, 0, 'www.google.com'),
(3, 1, 'O pré-requisito de super-herói', 2, 0, 0, 0, 'www.google.com'),
(4, 1, 'Músculos Gritantes', 3, 0, 0, 0, 'www.google.com'),
(5, 1, 'Ponto de Partida', 4, 0, 0, 0, ''),
(6, 1, 'O Que Posso Fazer Por Enquanto', 5, 0, 0, 0, ''),
(7, 1, 'Enfureça, Nerd Maldito', 6, 2, 0, 0, ''),
(8, 1, 'Deku vs Kacchan', 7, 0, 0, 0, ''),
(9, 1, 'O Ponto de Partida do Bakugo.', 8, 0, 0, 0, ''),
(10, 1, 'Iida-kun, Dê o Seu Melhor!', 9, 0, 0, 0, ''),
(11, 1, 'Encontro Com o Desconhecido', 10, 0, 0, 0, ''),
(12, 1, 'Game Over', 11, 0, 0, 0, ''),
(13, 1, 'All Might', 12, 0, 0, 0, ''),
(14, 1, 'No Coração de Cada Um de Nós', 13, 0, 0, 0, ''),
(15, 7, 'A irmã mais nova e uma porta que nunca se abre', 1, 2, 0, 0, ''),
(16, 7, 'A representante de classe com vida normal e a fada destemida', 2, 3, 0, 0, ''),
(17, 7, 'A mansão dos despidos e o senhor depravado', 3, 0, 0, 0, ''),
(18, 7, 'Eromanga-sensei', 4, 0, 0, 0, ''),
(19, 7, 'Planejando uma light novel junto com a minha irmãzinha', 5, 0, 0, 0, ''),
(20, 7, 'Izumi Masamune e seu velho inimigo de 10 milhões de cópias', 6, 0, 0, 0, ''),
(21, 7, 'Minha irmãzinha e o novel mais interessante do mundo', 7, 0, 0, 0, ''),
(22, 7, 'Sagiri sonhadora e fogos de artifício no verão', 8, 0, 0, 0, ''),
(23, 7, 'A irmãzinha e a Ilha das Fadas', 9, 0, 0, 0, ''),
(24, 7, 'Izumi Masamune e a senpai mais nova\r\n', 10, 0, 0, 0, ''),
(25, 7, 'Como os dois se encontraram e futuros irmãos', 11, 0, 0, 0, ''),
(26, 7, 'Eromanga Festival', 12, 0, 0, 0, ''),
(27, 2, 'Essa é a Ideia, Ochaco-san', 1, 1, 0, 0, ''),
(28, 2, 'O Festival de Esportes Ruge', 15, 0, 0, 0, ''),
(29, 2, 'De Suas Próprias e Peculiares Maneiras', 3, 0, 0, 0, ''),
(30, 2, 'Estratégia, Estratégia, Estratégia', 4, 0, 0, 0, ''),
(31, 2, 'O Final da Batalha de Cavalaria', 5, 0, 0, 0, ''),
(32, 2, 'O Garoto Que Nasceu com Tudo', 6, 0, 0, 0, ''),
(33, 2, 'Vitória ou Derrota', 7, 0, 0, 0, ''),
(34, 2, 'Lutem, Desafiantes!', 8, 0, 0, 0, ''),
(35, 2, 'Bakugo vs Uraraka', 9, 0, 0, 0, ''),
(36, 2, 'Todoroki Shōto: Origem', 10, 0, 0, 0, ''),
(37, 2, 'A Luta de Iida-kun', 11, 0, 0, 0, ''),
(38, 2, 'Todoroki vs Bakugo', 12, 0, 0, 0, ''),
(39, 2, 'Hora de Escolher Alguns Nomes', 13, 0, 0, 0, ''),
(40, 2, 'Bizarro! Gran Torino Aparece', 14, 0, 0, 0, ''),
(41, 2, 'Midoriya e Shigaraki', 15, 0, 0, 0, ''),
(42, 2, 'Assassino de Heróis: Stain vs Alunos da U.A.', 16, 0, 0, 0, ''),
(43, 2, 'Clímax', 17, 2, 0, 0, ''),
(44, 2, 'O Assassino de Heróis Stain: Suas Consequências', 18, 0, 0, 0, ''),
(45, 2, 'Os Estágios da Turma', 19, 0, 0, 0, ''),
(46, 2, 'Escutem!! Um Conto do Passado', 20, 0, 0, 0, ''),
(47, 2, 'Preparem-se para o Exame Final', 21, 0, 0, 0, ''),
(48, 2, 'Yaoyorozu: Ascensão', 22, 0, 0, 0, ''),
(49, 2, 'Removendo o Verniz', 23, 0, 0, 0, ''),
(50, 2, 'Bakugo Katsuki: Origem', 24, 0, 0, 0, ''),
(51, 2, 'Encontro', 25, 0, 0, 0, ''),
(52, 3, 'O Jogo Começa', 1, 0, 0, 0, ''),
(53, 3, 'Wild, Wild, Pussycats', 2, 0, 0, 0, ''),
(54, 3, 'Kota-kun', 3, 0, 0, 0, ''),
(55, 3, 'Meu Herói', 4, 0, 0, 0, ''),
(56, 3, 'Mande-o Para Casa!!!', 5, 0, 0, 0, ''),
(57, 3, 'Revolta Rugindo', 6, 0, 0, 0, ''),
(58, 3, 'Que Reviravolta!', 7, 0, 0, 0, ''),
(59, 3, 'De Iida Para Midoriya', 8, 0, 0, 0, ''),
(60, 3, 'All For One', 9, 0, 0, 0, ''),
(61, 3, 'Símbolo da Paz', 10, 0, 0, 0, ''),
(62, 3, 'One For All', 11, 0, 0, 0, ''),
(63, 3, 'Fim do Começo, Começo do Fim', 12, 0, 0, 0, ''),
(64, 3, 'Entrando nos Dormitórios', 13, 0, 0, 0, ''),
(65, 3, 'Criando Movimentos Supremos', 14, 0, 0, 0, ''),
(66, 3, 'O Teste', 15, 0, 0, 0, ''),
(67, 3, 'Emboscada da Escola Shiketsu', 16, 0, 0, 0, ''),
(68, 3, 'Classe 1-A', 17, 0, 0, 0, ''),
(69, 3, 'Rush!', 18, 0, 0, 0, ''),
(70, 3, 'Exercícios de Resgate', 19, 0, 0, 0, ''),
(71, 3, 'Especial: Salve o Mundo com Amor!', 20, 0, 0, 0, ''),
(72, 3, 'Qual a Grande Ideia?', 21, 0, 0, 0, ''),
(73, 3, 'Uma Conversa Sobre Seu Dom', 22, 0, 0, 0, ''),
(74, 3, 'Deku vs Kacchan 2', 23, 0, 0, 0, ''),
(75, 3, 'Uma Temporada para Encontros', 24, 0, 0, 0, ''),
(76, 3, 'Incomparável', 25, 0, 0, 0, ''),
(77, 4, 'Keita Amano e capítulos do escolhido', 1, 0, 0, 0, ''),
(78, 4, 'Uera Tasuku e o novo jogo', 2, 0, 0, 0, ''),
(79, 4, 'Hiroshinomori Chiaki E A Comunicação Por StreetPass', 3, 0, 0, 0, ''),
(80, 4, 'Tendou Karen e os dias da queda', 4, 0, 0, 0, ''),
(81, 4, 'Aguri e problemas na comunicação', 5, 0, 0, 0, ''),
(82, 4, 'Gamers e a aniquilação do final de jogo\r\n', 6, 0, 0, 0, ''),
(83, 4, 'Amano Keita E Karen', 7, 0, 0, 0, ''),
(84, 4, 'Erogamer E O Modo Espectador', 8, 0, 0, 0, ''),
(85, 4, 'Chiaki Hoshinomori e o hackeamento da conta\r\n', 9, 0, 0, 0, ''),
(86, 4, 'Gamers e o level seguinte\r\n', 10, 0, 0, 0, ''),
(87, 4, 'Gamers e a juventude contínua', 11, 0, 0, 0, ''),
(88, 4, 'Os jogadores e o sistema de pagamentos conversam\r\n', 12, 0, 0, 0, ''),
(89, 5, 'Aceleração', 1, 0, 0, 0, ''),
(90, 5, 'Transformação', 2, 0, 0, 0, ''),
(91, 5, 'Investigação', 3, 0, 0, 0, ''),
(92, 5, 'Declaração', 4, 0, 0, 0, ''),
(93, 5, 'Aviação', 5, 0, 0, 0, ''),
(94, 5, 'Retribuição', 6, 0, 0, 0, ''),
(95, 5, 'Restauração', 7, 0, 0, 0, ''),
(96, 5, 'Tentação', 8, 0, 0, 0, ''),
(97, 5, 'Escalação', 9, 0, 0, 0, ''),
(98, 5, 'Ativação', 10, 0, 0, 0, ''),
(99, 5, 'Obrigação\r\n', 11, 0, 0, 0, ''),
(100, 5, 'Absolução', 12, 0, 0, 0, ''),
(101, 5, 'Violação', 13, 0, 0, 0, ''),
(102, 5, 'Prisão\r\n', 14, 0, 0, 0, ''),
(103, 5, 'Destruição', 15, 0, 0, 0, ''),
(104, 5, 'Imaginação', 16, 0, 0, 0, ''),
(105, 5, 'Fragmentação', 17, 0, 0, 0, ''),
(106, 5, 'Convite', 18, 0, 0, 0, ''),
(107, 5, 'Revolução', 19, 0, 0, 0, ''),
(108, 5, 'Dominação', 20, 0, 0, 0, ''),
(109, 5, 'Insurreição', 21, 0, 0, 0, ''),
(110, 5, 'Determinação', 22, 0, 0, 0, ''),
(111, 5, 'Consolidação', 23, 0, 0, 0, ''),
(112, 5, 'Reincarnação', 24, 0, 0, 0, ''),
(113, 6, 'The Quintessential Quintuplets', 1, 0, 0, 0, ''),
(114, 6, 'Confissão no terraço', 2, 0, 0, 0, ''),
(115, 6, 'Uma montanha de problemas', 3, 0, 0, 0, ''),
(116, 6, 'Folga', 4, 0, 0, 0, ''),
(117, 6, 'Cinco quintos', 5, 0, 0, 0, ''),
(118, 6, 'O que foi construído', 6, 0, 0, 0, ''),
(119, 6, 'Mentiroso McLieface', 7, 0, 0, 0, ''),
(120, 6, 'A foto que começou tudo', 8, 0, 0, 0, ''),
(121, 6, 'Dia da Lenda do Destino 1', 9, 0, 0, 0, ''),
(122, 6, 'Dia da Lenda do Destino 2\r\n', 10, 0, 0, 0, ''),
(123, 6, 'Dia da Lenda do Destino 3', 11, 0, 0, 0, ''),
(124, 6, 'Dia da Lenda do Destino 2000', 12, 0, 0, 0, ''),
(125, 8, 'Eu vou te fazer me convidar pra ver um filme / Kaguya quer ser d...', 1, 2, 0, 0, ''),
(126, 8, 'Kaguya quer trocar / Chika quer ir para algum lugar / Miyuki quer..', 2, 0, 0, 0, ''),
(127, 8, 'Miyuki Shirogane ainda não fez nada / Kaguya quer ser entendida / Kaguya...\r\n', 3, 0, 0, 0, ''),
(128, 8, 'Kaguya quer carinho / O conselho estudantil quer falar algo / Kaguya que...', 4, 0, 0, 0, ''),
(129, 8, 'Kaguya quer lidar com tudo / Miyuki Shirogane quer aparecer / K...\r\n', 5, 0, 0, 0, ''),
(130, 8, 'Yu Ishigami quer viver / Chika Fujiwara quer testá-lo / Kaguya qu..\r\n', 6, 0, 0, 0, ''),
(131, 8, 'Miyuki Shirogane quer trabalhar / Kaguya quer que ele entre / Kaguya...\r\n', 7, 0, 0, 0, ''),
(132, 8, 'Kaguya quer que ela fale / Miyuki Shirogane não pode perder / Yu Is', 8, 0, 0, 0, ''),
(133, 8, 'Kaguya quer dar um presente / Chika Fujiwara quer visitar / Sob...', 9, 0, 0, 0, ''),
(134, 8, ' Kaguya não vai perdoar / Kaguya quer perdoar / Miyuki Shirogane quer ir a algum lugar...', 10, 0, 0, 0, ''),
(135, 8, 'Ai Hayasaka quer ficar molhadinha / Chika Fujiwara quer muito...', 11, 2, 0, 0, ''),
(136, 8, 'Não consigo ouvir os fogos de artifício, parte 2 / Kaguya não qu...', 12, 0, 0, 0, ''),
(137, 9, '“Essa Autoproclamada Deusa e Reencarnação em Outro Mundo!”', 1, 0, NULL, NULL, ''),
(138, 9, '“Uma Explosão Para Essa Chuunibyou!”', 2, 0, NULL, NULL, ''),
(139, 9, '“O Tesouro Nessa Mão Direita!”', 3, 0, NULL, NULL, ''),
(140, 9, '“Magia Explosiva Para Esse Inimigo Formidável!”', 4, 0, NULL, NULL, ''),
(141, 9, '“O Preço Para Essa Espada Amaldiçoada!”', 5, 0, NULL, NULL, ''),
(142, 9, '“A Conclusão Dessa Luta Inútil!”', 6, 0, NULL, NULL, ''),
(143, 9, '“Uma Segunda Morte Nessa Estação Congelante!”\r\n', 7, 0, NULL, NULL, ''),
(144, 9, '“Uma mão amável para nosso grupo que não consegue passar pelo inverno!”\r\n', 8, 0, NULL, NULL, ''),
(145, 9, '“As Bênçãos de Deus Nessa Maravilhosa Loja!”', 9, 0, NULL, NULL, ''),
(146, 9, '“Chama Final para Essa Fortaleza Extraordinária!”', 10, 0, NULL, NULL, ''),
(147, 9, '“As bençãos de Deus nesta maravilhosa gargantilha!” - OVA\r\n', 11, 0, NULL, NULL, ''),
(148, 10, 'Morte sete dardos', 1, 0, NULL, NULL, ''),
(149, 10, 'Morte Reversa', 2, 0, NULL, NULL, ''),
(150, 10, 'Rolando Balada', 4, 0, NULL, NULL, ''),
(151, 10, 'Morte Arcade', 4, 0, NULL, NULL, ''),
(152, 10, 'Marcha da Morte', 5, 0, NULL, NULL, ''),
(153, 10, 'Ataque cardíaco atrasado', 6, 0, NULL, NULL, ''),
(154, 10, 'Veneno do Álcool', 7, 0, NULL, NULL, ''),
(155, 10, 'Rally da Morte', 8, 0, NULL, NULL, ''),
(156, 10, 'Contador da Morte', 9, 0, NULL, NULL, ''),
(157, 10, 'Contador de histórias', 10, 0, NULL, NULL, ''),
(158, 10, 'Memento Mori! Lembrete da Morte', 11, 3, NULL, NULL, ''),
(159, 10, 'Suicídio Tour', 12, 0, NULL, NULL, ''),
(160, 11, '\"Dio, o Destruidor\"', 1, NULL, NULL, NULL, ''),
(161, 11, '\"Uma carta do Passado\"', 2, NULL, NULL, NULL, ''),
(162, 11, '\"A Adolescência de Dio\"', 3, NULL, NULL, NULL, ''),
(163, 11, '\"Overdrive\"', 4, NULL, NULL, NULL, ''),
(164, 11, '\"Os Cavaleiros Negros\"', 5, NULL, NULL, NULL, ''),
(165, 11, '\"Coragem para o Amanhã\"', 6, NULL, NULL, NULL, ''),
(166, 11, '\"Sucessor\"', 7, NULL, NULL, NULL, ''),
(167, 11, 'Combate Sangrento! JoJo vs. Dio\"', 8, NULL, NULL, NULL, ''),
(168, 11, '\"Último Hamon!\"', 9, NULL, NULL, NULL, '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
