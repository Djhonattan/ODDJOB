-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 29-Out-2019 às 16:12
-- Versão do servidor: 5.7.24-0ubuntu0.18.04.1
-- PHP Version: 7.2.13-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_oddjob`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `anuncio`
--

CREATE TABLE `anuncio` (
  `cod_anuncio` int(11) NOT NULL,
  `imagem` varchar(5000) DEFAULT NULL,
  `dt_publicacao` date DEFAULT NULL,
  `descricao_anuncio` varchar(300) DEFAULT NULL,
  `categoria` varchar(80) DEFAULT NULL,
  `titulo` varchar(80) DEFAULT NULL,
  `pagamento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `anuncio`
--

INSERT INTO `anuncio` (`cod_anuncio`, `imagem`, `dt_publicacao`, `descricao_anuncio`, `categoria`, `titulo`, `pagamento`) VALUES
(1, 'bolo.png', NULL, NULL, NULL, 'Bolo de Aniversário Tipo Americano', NULL),
(2, 'lele.png', NULL, NULL, NULL, 'Um encanado muito feliz ', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `lance`
--

CREATE TABLE `lance` (
  `cpf_user_contratado` int(11) NOT NULL,
  `cod_anuncio` int(11) NOT NULL,
  `data_hora` timestamp NULL DEFAULT NULL,
  `valor` int(11) DEFAULT NULL,
  `confirmado` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `local`
--

CREATE TABLE `local` (
  `estado` varchar(80) DEFAULT NULL,
  `cep` int(11) NOT NULL,
  `cidade` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `relacao`
--

CREATE TABLE `relacao` (
  `cod_user` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_user`
--

CREATE TABLE `tipo_user` (
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `cod_user` int(11) NOT NULL,
  `nome` varchar(80) DEFAULT NULL,
  `sobrenome` varchar(80) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `pwo` varchar(30) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `sexo` varchar(20) DEFAULT NULL,
  `cidade_user` varchar(80) DEFAULT NULL,
  `estado_user` varchar(80) DEFAULT NULL,
  `desc_user` varchar(5000) DEFAULT NULL,
  `areas_user` varchar(5000) DEFAULT NULL,
  `formacao` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`cod_user`, `nome`, `sobrenome`, `email`, `pwo`, `tel`, `sexo`, `cidade_user`, `estado_user`, `desc_user`, `areas_user`, `formacao`) VALUES
(1, 'Anna', 'Correia', 'AnnaAzevedoCorreia@fleckens.hu', 'Eijae0airoh', '(71) 6848-7984', 'F', 'Joinville', 'SC', NULL, NULL, NULL),
(2, 'Danilo', 'Barbosa', 'DaniloPereiraBarbosa@cuvox.de', 'La8lae4ja6v', '(67) 4333-5320', 'M', 'Joinville', 'SC', NULL, NULL, NULL),
(3, 'Mateus', 'Gomes', 'MateusCastroGomes@jourrapide.com', 'dooLahf0eeGh', '(12) 4896-9386', 'M', 'Joinville', 'SC', NULL, NULL, NULL),
(4, 'Erick', 'Costa', 'ErickCarvalhoCosta@dayrep.com', 'raiXei1ahp', '(21) 5959-8503', 'M', 'Joinville', 'SC', NULL, NULL, NULL),
(5, 'Giovana', 'Fernandes', 'GiovanaSilvaFernandes@fleckens.hu', 'iehii9PhuGh', '(11) 6756-5861', 'F', 'Joinville', 'SC', NULL, NULL, NULL),
(6, 'Rodrigo', 'Souza', 'RodrigoSilvaSouza@gustr.com', 'Bush7pae1y', '(21) 2180-7717', 'M', 'Joinville', 'SC', NULL, NULL, NULL),
(7, 'Beatriz', 'Correia', 'BeatrizFernandesCorreia@gustr.com', 'ohNgoh9qu', '(19) 7608-4396', 'F', 'Vacaria', 'RS', NULL, NULL, NULL),
(8, 'Rafaela', 'Ribeiro', 'RafaelaOliveiraRibeiro@einrot.com', 'No9aeMa4ee', '(84) 3054-5254', 'F', 'Vacaria', 'RS', NULL, NULL, NULL),
(9, 'Matheus', 'Almeida', 'MatheusCarvalhoAlmeida@gustr.com', 'ooxaa8Oomooqu', '(11) 2084-5063', 'M', 'Vacaria', 'RS', NULL, NULL, NULL),
(10, 'Eduarda', 'Dias', 'EduardaRibeiroDias@rhyta.com', 'tor6bie6Ah', '(21) 4141-8915', 'F', 'Vacaria', 'RS', NULL, NULL, NULL),
(11, 'José', 'Ribeiro', 'JoseGomesRibeiro@armyspy.com', 'vus8uuNoh', '(21) 4026-8056', 'M', 'Vacaria', 'RS', NULL, NULL, NULL),
(12, 'Arthur', 'Pereira', 'ArthurCorreiaPereira@dayrep.com', 'Iich6weichah', '(51) 2055-9951', 'M', 'Vacaria', 'RS', NULL, NULL, NULL),
(13, 'Kai', 'Azevedo', 'KaiBarrosAzevedo@gustr.com', 'eCum2ay6zei', '(21) 7555-8382', 'M', 'Araquari', 'SC', NULL, NULL, NULL),
(14, 'Vinicius', 'Barros', 'ViniciusCardosoBarros@gustr.com', 'Too4iebe', '(21) 7242-8569', 'M', 'Araquari', 'SC', NULL, NULL, NULL),
(15, 'Miguel', 'Souza', 'MiguelSilvaSouza@dayrep.com', 'oong3fareTee', '(31) 6332-6461', 'M', 'Araquari', 'SC', NULL, NULL, NULL),
(16, 'Samuel', 'Souza', 'SamuelAlvesSouza@fleckens.hu', 'Ahch7AiKoh', '(67) 4454-3653', 'M', 'Araquari', 'SC', NULL, NULL, NULL),
(17, 'Leila', 'Araujo', 'LeilaAzevedoAraujo@rhyta.com', 'shu9AeVu', '(92) 2208-3605', 'F', 'Araquari', 'SC', NULL, NULL, NULL),
(18, 'Kauan', 'Almeida', 'KauanGoncalvesAlmeida@rhyta.com', 'Fahgh1uquae5', '(11) 3364-5722', 'M', 'Araquari', 'SC', NULL, NULL, NULL),
(19, 'Anna', 'Correia', 'AnnaAzevedoCorreia@fleckens.hu', 'Eijae0airoh', '(71) 6848-7984', 'F', 'Joinville', 'SC', NULL, NULL, NULL),
(20, 'Danilo', 'Barbosa', 'DaniloPereiraBarbosa@cuvox.de', 'La8lae4ja6v', '(67) 4333-5320', 'M', 'Joinville', 'SC', NULL, NULL, NULL),
(21, 'Mateus', 'Gomes', 'MateusCastroGomes@jourrapide.com', 'dooLahf0eeGh', '(12) 4896-9386', 'M', 'Joinville', 'SC', NULL, NULL, NULL),
(22, 'Erick', 'Costa', 'ErickCarvalhoCosta@dayrep.com', 'raiXei1ahp', '(21) 5959-8503', 'M', 'Joinville', 'SC', NULL, NULL, NULL),
(23, 'Giovana', 'Fernandes', 'GiovanaSilvaFernandes@fleckens.hu', 'iehii9PhuGh', '(11) 6756-5861', 'F', 'Joinville', 'SC', NULL, NULL, NULL),
(24, 'Rodrigo', 'Souza', 'RodrigoSilvaSouza@gustr.com', 'Bush7pae1y', '(21) 2180-7717', 'M', 'Joinville', 'SC', NULL, NULL, NULL),
(25, 'Beatriz', 'Correia', 'BeatrizFernandesCorreia@gustr.com', 'ohNgoh9qu', '(19) 7608-4396', 'F', 'Vacaria', 'RS', NULL, NULL, NULL),
(26, 'Rafaela', 'Ribeiro', 'RafaelaOliveiraRibeiro@einrot.com', 'No9aeMa4ee', '(84) 3054-5254', 'F', 'Vacaria', 'RS', NULL, NULL, NULL),
(27, 'Matheus', 'Almeida', 'MatheusCarvalhoAlmeida@gustr.com', 'ooxaa8Oomooqu', '(11) 2084-5063', 'M', 'Vacaria', 'RS', NULL, NULL, NULL),
(28, 'Eduarda', 'Dias', 'EduardaRibeiroDias@rhyta.com', 'tor6bie6Ah', '(21) 4141-8915', 'F', 'Vacaria', 'RS', NULL, NULL, NULL),
(29, 'José', 'Ribeiro', 'JoseGomesRibeiro@armyspy.com', 'vus8uuNoh', '(21) 4026-8056', 'M', 'Vacaria', 'RS', NULL, NULL, NULL),
(30, 'Arthur', 'Pereira', 'ArthurCorreiaPereira@dayrep.com', 'Iich6weichah', '(51) 2055-9951', 'M', 'Vacaria', 'RS', NULL, NULL, NULL),
(31, 'Kai', 'Azevedo', 'KaiBarrosAzevedo@gustr.com', 'eCum2ay6zei', '(21) 7555-8382', 'M', 'Araquari', 'SC', NULL, NULL, NULL),
(32, 'Vinicius', 'Barros', 'ViniciusCardosoBarros@gustr.com', 'Too4iebe', '(21) 7242-8569', 'M', 'Araquari', 'SC', NULL, NULL, NULL),
(33, 'Miguel', 'Souza', 'MiguelSilvaSouza@dayrep.com', 'oong3fareTee', '(31) 6332-6461', 'M', 'Araquari', 'SC', NULL, NULL, NULL),
(34, 'Samuel', 'Souza', 'SamuelAlvesSouza@fleckens.hu', 'Ahch7AiKoh', '(67) 4454-3653', 'M', 'Araquari', 'SC', NULL, NULL, NULL),
(35, 'Leila', 'Araujo', 'LeilaAzevedoAraujo@rhyta.com', 'shu9AeVu', '(92) 2208-3605', 'F', 'Araquari', 'SC', NULL, NULL, NULL),
(36, 'Kauan', 'Almeida', 'KauanGoncalvesAlmeida@rhyta.com', 'Fahgh1uquae5', '(11) 3364-5722', 'M', 'Araquari', 'SC', NULL, NULL, NULL),
(37, 'Rafael', 'Vender', 'vendoCapaDe@tablet.com', '321', '47 2424-2424', 'Masculino', '321', 'SC', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_contrata`
--

CREATE TABLE `user_contrata` (
  `cpf_user_contrata` int(11) NOT NULL,
  `cod_user` int(11) NOT NULL,
  `cod_anuncio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_contratado`
--

CREATE TABLE `user_contratado` (
  `cpf_user_contratado` int(11) NOT NULL,
  `cod_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anuncio`
--
ALTER TABLE `anuncio`
  ADD PRIMARY KEY (`cod_anuncio`);

--
-- Indexes for table `lance`
--
ALTER TABLE `lance`
  ADD KEY `cod_anuncio` (`cod_anuncio`),
  ADD KEY `cpf_user_contratado` (`cpf_user_contratado`);

--
-- Indexes for table `local`
--
ALTER TABLE `local`
  ADD PRIMARY KEY (`cep`);

--
-- Indexes for table `relacao`
--
ALTER TABLE `relacao`
  ADD KEY `cod_user` (`cod_user`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tipo_user`
--
ALTER TABLE `tipo_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`cod_user`);

--
-- Indexes for table `user_contrata`
--
ALTER TABLE `user_contrata`
  ADD PRIMARY KEY (`cpf_user_contrata`),
  ADD KEY `cod_anuncio` (`cod_anuncio`),
  ADD KEY `cod_user` (`cod_user`);

--
-- Indexes for table `user_contratado`
--
ALTER TABLE `user_contratado`
  ADD PRIMARY KEY (`cpf_user_contratado`),
  ADD KEY `cod_user` (`cod_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anuncio`
--
ALTER TABLE `anuncio`
  MODIFY `cod_anuncio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tipo_user`
--
ALTER TABLE `tipo_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `cod_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `lance`
--
ALTER TABLE `lance`
  ADD CONSTRAINT `lance_ibfk_1` FOREIGN KEY (`cod_anuncio`) REFERENCES `anuncio` (`cod_anuncio`),
  ADD CONSTRAINT `lance_ibfk_2` FOREIGN KEY (`cpf_user_contratado`) REFERENCES `user_contratado` (`cpf_user_contratado`);

--
-- Limitadores para a tabela `relacao`
--
ALTER TABLE `relacao`
  ADD CONSTRAINT `relacao_ibfk_1` FOREIGN KEY (`cod_user`) REFERENCES `user` (`cod_user`),
  ADD CONSTRAINT `relacao_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tipo_user` (`id_user`);

--
-- Limitadores para a tabela `user_contrata`
--
ALTER TABLE `user_contrata`
  ADD CONSTRAINT `user_contrata_ibfk_1` FOREIGN KEY (`cod_anuncio`) REFERENCES `anuncio` (`cod_anuncio`),
  ADD CONSTRAINT `user_contrata_ibfk_2` FOREIGN KEY (`cod_user`) REFERENCES `user` (`cod_user`);

--
-- Limitadores para a tabela `user_contratado`
--
ALTER TABLE `user_contratado`
  ADD CONSTRAINT `user_contratado_ibfk_1` FOREIGN KEY (`cod_user`) REFERENCES `user` (`cod_user`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
