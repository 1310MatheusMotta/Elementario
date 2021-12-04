-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Nov-2021 às 15:07
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projeto_04`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `nome_alu` varchar(255) NOT NULL,
  `id_alu` int(11) NOT NULL,
  `id_professor` int(11) NOT NULL,
  `numero_alu` int(11) NOT NULL,
  `media` int(11) NOT NULL DEFAULT 0,
  `mediaAtual` int(11) NOT NULL DEFAULT 0,
  `mediaNecessaria` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`nome_alu`, `id_alu`, `id_professor`, `numero_alu`, `media`, `mediaAtual`, `mediaNecessaria`) VALUES
('Danilo carmo', 46, 14, 12, 2, 4, 6),
('Danilo carmo', 47, 6, 12, 0, 0, 0),
('Yago Theo Moraes', 48, 6, 0, 0, 0, 0),
('Caio Benjamin de Paula', 49, 6, 0, 0, 0, 0),
('Nathan Mateus da Cunha', 50, 6, 0, 0, 0, 0),
('Yuri Nathan Dias', 51, 6, 0, 0, 0, 0),
('Manuel Kaique Pinto', 52, 6, 0, 0, 0, 0),
('Samuel Ruan Henry da Cunha', 53, 6, 0, 0, 0, 0),
('Bryan Osvaldo Cavalcanti', 54, 6, 0, 0, 0, 0),
('Thales Pietro Figueiredo', 55, 6, 0, 0, 0, 0),
('Nathan Caio Yuri Oliveira', 56, 6, 0, 0, 0, 0),
('Leonardo Rafael Juan Oliveira', 57, 6, 0, 0, 0, 0),
('Samuel Isaac da Rocha', 58, 6, 0, 0, 0, 0),
('Erick Enzo Caio Rocha', 59, 6, 0, 0, 0, 0),
('Rodrigo Gustavo Ricardo Castro', 60, 6, 0, 0, 0, 0),
('André Diego Danilo da Conceição', 61, 6, 0, 0, 0, 0),
('Liz Alana Tatiane Monteiro', 62, 6, 0, 0, 0, 0),
('Francisca Ayla Brenda Porto', 63, 6, 0, 0, 0, 0),
('Luana Elza Patrícia Ribeiro', 64, 6, 0, 0, 0, 0),
('Natália Larissa Dias', 65, 6, 0, 0, 0, 0),
('Mariah Giovanna Fernanda da Conceição', 66, 6, 0, 0, 0, 0),
('Adriana Maitê Antônia da Paz', 67, 6, 0, 0, 0, 0),
('Betina Camila Galvão', 68, 6, 0, 0, 0, 0),
('Antonella Benedita Moura', 69, 6, 0, 0, 0, 0),
('Tatiane Carla Liz Cardoso', 70, 6, 0, 0, 0, 0),
('Louise Helena Melissa Gonçalves', 71, 6, 0, 0, 0, 0),
('Larissa Joana Helena Ferreira', 72, 6, 0, 0, 0, 0),
('Sophia Juliana Bernardes', 73, 6, 0, 0, 0, 0),
('Ana Beatriz', 75, 6, 0, 0, 0, 0),
('Antonio Sala', 76, 9, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `aprovados`
--

CREATE TABLE `aprovados` (
  `media` double NOT NULL,
  `mediaAtual` double NOT NULL,
  `mediaNecessaria` double NOT NULL,
  `id_aluno` int(11) NOT NULL,
  `id_disciplina` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `aprovados`
--

INSERT INTO `aprovados` (`media`, `mediaAtual`, `mediaNecessaria`, `id_aluno`, `id_disciplina`, `id`) VALUES
(1.7, 5, 6, 75, 10, 114),
(1, 3, 6, 67, 11, 116),
(1, 3, 6, 61, 11, 117),
(1, 3, 6, 69, 11, 118),
(1, 3, 6, 68, 11, 119),
(1, 3, 6, 54, 11, 120),
(1, 3, 6, 49, 11, 121),
(1, 3, 6, 47, 11, 122),
(1, 3, 6, 59, 11, 123),
(1, 3, 6, 63, 11, 124),
(1, 3, 6, 72, 11, 125),
(1, 3, 6, 57, 11, 126),
(1, 3, 6, 62, 11, 127),
(1, 3, 6, 71, 11, 128),
(1, 3, 6, 64, 11, 129),
(1, 3, 6, 52, 11, 130),
(1, 3, 6, 66, 11, 131),
(1, 3, 6, 65, 11, 132),
(1, 3, 6, 56, 11, 133),
(1, 3, 6, 50, 11, 134),
(1, 3, 6, 60, 11, 135),
(1, 3, 6, 58, 11, 136),
(1, 3, 6, 53, 11, 137),
(1, 3, 6, 73, 11, 138),
(1, 3, 6, 70, 11, 139),
(1, 3, 6, 55, 11, 140),
(1, 3, 6, 48, 11, 141),
(1, 3, 6, 51, 11, 142);

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacao`
--

CREATE TABLE `avaliacao` (
  `nome` varchar(255) NOT NULL,
  `data` date NOT NULL,
  `codigo_ava` int(11) NOT NULL,
  `id_professor` int(11) NOT NULL,
  `disciplina` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  `turma` int(11) NOT NULL,
  `periodo` int(11) NOT NULL,
  `valor` double NOT NULL,
  `tem_notas` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `avaliacao`
--

INSERT INTO `avaliacao` (`nome`, `data`, `codigo_ava`, `id_professor`, `disciplina`, `tipo`, `turma`, `periodo`, `valor`, `tem_notas`) VALUES
('1 tri Geografia', '0000-00-00', 21, 6, 10, 1, 24, 1, 5, 1),
('1 tri Matematica', '2021-11-27', 25, 6, 11, 1, 23, 1, 5, 1),
('1 tri historia', '2021-11-30', 26, 6, 7, 2, 23, 1, 10, 1),
('2 tri historia', '2021-11-11', 27, 6, 7, 2, 23, 2, 10, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `conter`
--

CREATE TABLE `conter` (
  `codigo_tur` int(11) NOT NULL,
  `id_aluno` int(11) NOT NULL,
  `id_professor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `conter`
--

INSERT INTO `conter` (`codigo_tur`, `id_aluno`, `id_professor`) VALUES
(23, 47, 6),
(23, 48, 6),
(23, 49, 6),
(23, 50, 6),
(23, 51, 6),
(23, 52, 6),
(23, 53, 6),
(23, 54, 6),
(23, 55, 6),
(23, 56, 6),
(23, 57, 6),
(23, 58, 6),
(23, 59, 6),
(23, 60, 6),
(23, 61, 6),
(23, 62, 6),
(23, 63, 6),
(23, 64, 6),
(23, 65, 6),
(23, 66, 6),
(23, 67, 6),
(23, 68, 6),
(23, 69, 6),
(23, 70, 6),
(23, 71, 6),
(23, 72, 6),
(23, 73, 6),
(24, 75, 6),
(25, 76, 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `nome_dis` varchar(255) NOT NULL,
  `codigo_dis` int(11) NOT NULL,
  `id_professor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `disciplinas`
--

INSERT INTO `disciplinas` (`nome_dis`, `codigo_dis`, `id_professor`) VALUES
('História', 6, 9),
('História', 7, 6),
('Geografia', 10, 6),
('Matemática', 11, 6),
('Geografia', 14, 14);

-- --------------------------------------------------------

--
-- Estrutura da tabela `instituicao`
--

CREATE TABLE `instituicao` (
  `nome_ins` varchar(255) NOT NULL,
  `codigo_ins` int(11) NOT NULL,
  `id_professor` int(11) NOT NULL,
  `modelo-semestral` int(11) NOT NULL,
  `media` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `instituicao`
--

INSERT INTO `instituicao` (`nome_ins`, `codigo_ins`, `id_professor`, `modelo-semestral`, `media`) VALUES
('Faetec', 7, 6, 3, 6),
('IFRJ', 8, 6, 1, 7),
('ETPC', 10, 6, 1, 7),
('Faetec', 17, 9, 1, 0),
('ICT', 19, 6, 2, 7),
('Colégio São Pedro', 22, 6, 2, 5),
('Colégio São Pedro', 24, 14, 2, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `id_aluno` int(11) NOT NULL,
  `id_avaliacao` int(11) NOT NULL,
  `disciplina` int(11) NOT NULL,
  `valor` double NOT NULL DEFAULT 0,
  `periodo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `nota`
--

INSERT INTO `nota` (`id_nota`, `id_aluno`, `id_avaliacao`, `disciplina`, `valor`, `periodo`) VALUES
(63, 75, 21, 10, 5, 1),
(65, 67, 25, 11, 3, 1),
(66, 61, 25, 11, 3, 1),
(67, 69, 25, 11, 3, 1),
(68, 68, 25, 11, 3, 1),
(69, 54, 25, 11, 3, 1),
(70, 49, 25, 11, 3, 1),
(71, 47, 25, 11, 3, 1),
(72, 59, 25, 11, 3, 1),
(73, 63, 25, 11, 3, 1),
(74, 72, 25, 11, 3, 1),
(75, 57, 25, 11, 3, 1),
(76, 62, 25, 11, 3, 1),
(77, 71, 25, 11, 3, 1),
(78, 64, 25, 11, 3, 1),
(79, 52, 25, 11, 3, 1),
(80, 66, 25, 11, 3, 1),
(81, 65, 25, 11, 3, 1),
(82, 56, 25, 11, 3, 1),
(83, 50, 25, 11, 3, 1),
(84, 60, 25, 11, 3, 1),
(85, 58, 25, 11, 3, 1),
(86, 53, 25, 11, 3, 1),
(87, 73, 25, 11, 3, 1),
(88, 70, 25, 11, 3, 1),
(89, 55, 25, 11, 3, 1),
(90, 48, 25, 11, 3, 1),
(91, 51, 25, 11, 3, 1),
(92, 67, 26, 7, 9, 1),
(93, 61, 26, 7, 9, 1),
(94, 69, 26, 7, 9, 1),
(95, 68, 26, 7, 9, 1),
(96, 54, 26, 7, 9, 1),
(97, 49, 26, 7, 8, 1),
(98, 47, 26, 7, 8, 1),
(99, 59, 26, 7, 8, 1),
(100, 63, 26, 7, 8, 1),
(101, 72, 26, 7, 8, 1),
(102, 57, 26, 7, 8, 1),
(103, 62, 26, 7, 7, 1),
(104, 71, 26, 7, 7, 1),
(105, 64, 26, 7, 7, 1),
(106, 52, 26, 7, 7, 1),
(107, 66, 26, 7, 7, 1),
(108, 65, 26, 7, 7, 1),
(109, 56, 26, 7, 7, 1),
(110, 50, 26, 7, 7, 1),
(111, 60, 26, 7, 7, 1),
(112, 58, 26, 7, 6, 1),
(113, 53, 26, 7, 6, 1),
(114, 73, 26, 7, 6, 1),
(115, 70, 26, 7, 6, 1),
(116, 55, 26, 7, 6, 1),
(117, 48, 26, 7, 6, 1),
(118, 51, 26, 7, 0, 1),
(119, 67, 27, 7, 9, 2),
(120, 61, 27, 7, 9, 2),
(121, 69, 27, 7, 9, 2),
(122, 68, 27, 7, 9, 2),
(123, 54, 27, 7, 9, 2),
(124, 49, 27, 7, 9, 2),
(125, 47, 27, 7, 9, 2),
(126, 59, 27, 7, 9, 2),
(127, 63, 27, 7, 9, 2),
(128, 72, 27, 7, 9, 2),
(129, 57, 27, 7, 9, 2),
(130, 62, 27, 7, 8, 2),
(131, 71, 27, 7, 8, 2),
(132, 64, 27, 7, 8, 2),
(133, 52, 27, 7, 8, 2),
(134, 66, 27, 7, 8, 2),
(135, 65, 27, 7, 8, 2),
(136, 56, 27, 7, 8, 2),
(137, 50, 27, 7, 8, 2),
(138, 60, 27, 7, 4, 2),
(139, 58, 27, 7, 4, 2),
(140, 53, 27, 7, 4, 2),
(141, 73, 27, 7, 4, 2),
(142, 70, 27, 7, 4, 2),
(143, 55, 27, 7, 4, 2),
(144, 48, 27, 7, 4, 2),
(145, 51, 27, 7, 4, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `possuir`
--

CREATE TABLE `possuir` (
  `id_usu` int(11) NOT NULL,
  `codigo_dis` int(11) NOT NULL,
  `codigo_tur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `realizar`
--

CREATE TABLE `realizar` (
  `codigo_ava` int(11) NOT NULL,
  `id_alu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `turmas`
--

CREATE TABLE `turmas` (
  `nome_tur` varchar(255) NOT NULL,
  `codigo_tur` int(11) NOT NULL,
  `cod_instituicao` int(11) NOT NULL,
  `id_professor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turmas`
--

INSERT INTO `turmas` (`nome_tur`, `codigo_tur`, `cod_instituicao`, `id_professor`) VALUES
('3 info', 23, 7, 6),
('2 ADM', 24, 7, 6),
('1 ifno', 25, 17, 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `nome_usu` varchar(255) NOT NULL,
  `id_usu` int(11) NOT NULL,
  `email_usu` varchar(255) NOT NULL,
  `senha_usu` varchar(255) NOT NULL,
  `user_usu` varchar(255) NOT NULL,
  `img_usu` varchar(255) NOT NULL,
  `tipo_usuario` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`nome_usu`, `id_usu`, `email_usu`, `senha_usu`, `user_usu`, `img_usu`, `tipo_usuario`) VALUES
('Danilo', 6, 'danilodocoliveira@gmail.com', 'Danilodan01*', 'Danilo', '', 1),
('Tonin', 9, 'tonin@gmail.com', 'Tonin123#', 'Antonio', '', 0),
('Danilo', 14, 'dnl.reset@gmail.com', 'Danilodan01*', 'DaniloProf12', '', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id_alu`),
  ADD KEY `id_professor` (`id_professor`);

--
-- Índices para tabela `aprovados`
--
ALTER TABLE `aprovados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_aluno` (`id_aluno`),
  ADD KEY `id_disciplina` (`id_disciplina`);

--
-- Índices para tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD PRIMARY KEY (`codigo_ava`),
  ADD KEY `id_professor` (`id_professor`),
  ADD KEY `disciplina` (`disciplina`),
  ADD KEY `turma` (`turma`);

--
-- Índices para tabela `conter`
--
ALTER TABLE `conter`
  ADD KEY `codigo_tur` (`codigo_tur`),
  ADD KEY `id_aluno` (`id_aluno`),
  ADD KEY `id_professor` (`id_professor`);

--
-- Índices para tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`codigo_dis`),
  ADD KEY `id_professor` (`id_professor`);

--
-- Índices para tabela `instituicao`
--
ALTER TABLE `instituicao`
  ADD PRIMARY KEY (`codigo_ins`),
  ADD KEY `id_professor` (`id_professor`);

--
-- Índices para tabela `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`),
  ADD KEY `valor` (`valor`),
  ADD KEY `id_aluno` (`id_aluno`),
  ADD KEY `id_avaliacao` (`id_avaliacao`),
  ADD KEY `disciplina` (`disciplina`);

--
-- Índices para tabela `possuir`
--
ALTER TABLE `possuir`
  ADD KEY `codigo_dis` (`codigo_dis`),
  ADD KEY `codigo_tur` (`codigo_tur`),
  ADD KEY `id_usu` (`id_usu`);

--
-- Índices para tabela `realizar`
--
ALTER TABLE `realizar`
  ADD KEY `id_alu` (`id_alu`),
  ADD KEY `codigo_ava` (`codigo_ava`);

--
-- Índices para tabela `turmas`
--
ALTER TABLE `turmas`
  ADD PRIMARY KEY (`codigo_tur`),
  ADD KEY `cod_instituicao` (`cod_instituicao`),
  ADD KEY `id_professor` (`id_professor`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usu`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id_alu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de tabela `aprovados`
--
ALTER TABLE `aprovados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT de tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  MODIFY `codigo_ava` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `codigo_dis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `instituicao`
--
ALTER TABLE `instituicao`
  MODIFY `codigo_ins` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT de tabela `turmas`
--
ALTER TABLE `turmas`
  MODIFY `codigo_tur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `alunos`
--
ALTER TABLE `alunos`
  ADD CONSTRAINT `alunos_ibfk_1` FOREIGN KEY (`id_professor`) REFERENCES `usuario` (`id_usu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `aprovados`
--
ALTER TABLE `aprovados`
  ADD CONSTRAINT `aprovados_ibfk_1` FOREIGN KEY (`id_aluno`) REFERENCES `alunos` (`id_alu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `aprovados_ibfk_2` FOREIGN KEY (`id_disciplina`) REFERENCES `disciplinas` (`codigo_dis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD CONSTRAINT `avaliacao_ibfk_1` FOREIGN KEY (`id_professor`) REFERENCES `usuario` (`id_usu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `avaliacao_ibfk_2` FOREIGN KEY (`disciplina`) REFERENCES `disciplinas` (`codigo_dis`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `avaliacao_ibfk_3` FOREIGN KEY (`turma`) REFERENCES `turmas` (`codigo_tur`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `conter`
--
ALTER TABLE `conter`
  ADD CONSTRAINT `conter_ibfk_1` FOREIGN KEY (`codigo_tur`) REFERENCES `turmas` (`codigo_tur`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `conter_ibfk_2` FOREIGN KEY (`id_aluno`) REFERENCES `alunos` (`id_alu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `conter_ibfk_3` FOREIGN KEY (`id_professor`) REFERENCES `usuario` (`id_usu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD CONSTRAINT `disciplinas_ibfk_1` FOREIGN KEY (`id_professor`) REFERENCES `usuario` (`id_usu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `instituicao`
--
ALTER TABLE `instituicao`
  ADD CONSTRAINT `instituicao_ibfk_1` FOREIGN KEY (`id_professor`) REFERENCES `usuario` (`id_usu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `nota_ibfk_1` FOREIGN KEY (`id_aluno`) REFERENCES `alunos` (`id_alu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nota_ibfk_2` FOREIGN KEY (`id_avaliacao`) REFERENCES `avaliacao` (`codigo_ava`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nota_ibfk_3` FOREIGN KEY (`disciplina`) REFERENCES `disciplinas` (`codigo_dis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `possuir`
--
ALTER TABLE `possuir`
  ADD CONSTRAINT `possuir_ibfk_1` FOREIGN KEY (`codigo_dis`) REFERENCES `disciplinas` (`codigo_dis`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `possuir_ibfk_2` FOREIGN KEY (`codigo_tur`) REFERENCES `turmas` (`codigo_tur`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `possuir_ibfk_3` FOREIGN KEY (`id_usu`) REFERENCES `usuario` (`id_usu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `realizar`
--
ALTER TABLE `realizar`
  ADD CONSTRAINT `realizar_ibfk_1` FOREIGN KEY (`id_alu`) REFERENCES `alunos` (`id_alu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `realizar_ibfk_2` FOREIGN KEY (`codigo_ava`) REFERENCES `avaliacao` (`codigo_ava`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `turmas`
--
ALTER TABLE `turmas`
  ADD CONSTRAINT `turmas_ibfk_1` FOREIGN KEY (`cod_instituicao`) REFERENCES `instituicao` (`codigo_ins`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `turmas_ibfk_2` FOREIGN KEY (`id_professor`) REFERENCES `usuario` (`id_usu`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
