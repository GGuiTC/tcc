-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 13/11/2024 às 20:35
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `contchamada`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

CREATE TABLE `alunos` (
  `id_alunos` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `data_nasc` date DEFAULT NULL,
  `matricula` varchar(30) DEFAULT NULL,
  `rua` varchar(100) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `CEP` char(8) DEFAULT NULL,
  `nome_resp` varchar(100) DEFAULT NULL,
  `contat_resp` varchar(100) DEFAULT NULL,
  `id_turma` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `alunos`
--

INSERT INTO `alunos` (`id_alunos`, `nome`, `data_nasc`, `matricula`, `rua`, `bairro`, `cidade`, `CEP`, `nome_resp`, `contat_resp`, `id_turma`) VALUES
(1, 'ALLAN HOFFMANN TROMBIM', NULL, '4545597300', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(2, 'ANA JÚLIA INGRACIA VIANA', NULL, '4550459106', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(3, 'ARTUR RECALCATTI BORDIGNON', NULL, '4543791761', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(4, 'BRAYAN ALVES CARDOSO', NULL, '4550423314', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(5, 'DAVI DE SOUZA DE CARVALHO', NULL, '4550418000', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(6, 'DAVI STEINER FREITAS', NULL, '4540390502', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(7, 'FERNANDO NUNES DE AGUIAR', NULL, '4540157808', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(8, 'GUILHERME TEIXEIRA CARDOSO', NULL, '4545848990', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(9, 'GUSTAVO SCARABELOT DOS SANTOS', NULL, '4547898439', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(10, 'HACHEMI HAFYANE', NULL, '4544810255', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(11, 'HENRIQUE MACHADO DE SOUZA', NULL, '4545843076', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(12, 'IGOR ANTUNES CUSTODIO', NULL, '4501953798', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(13, 'ISADORA ARAUJO ROCHA', NULL, '4550416121', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(14, 'JOAO MIGUEL MAIA SANTOS', NULL, '4546012690', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(15, 'JOAO VICTOR SERAFIM TOMAZ', NULL, '4540001859', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(16, 'JOAO VITOR DE SOUZA RODRIGUES', NULL, '4542718998', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(17, 'JORGE HENRIQUE DE SOUZA CARDOSO', NULL, '4550417020', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(18, 'KEVIN GIRELLI', NULL, '4545842452', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(19, 'LEONARDO DE MELOS DAITX', NULL, '4543705660', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(20, 'LETICIA DA ROSA JUVENCIO', NULL, '4546897579', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(21, 'MARIA CRISTINA TERNUS', NULL, '4550440316', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(22, 'MATEUS MARTINS BOAROLI', NULL, '4545742601', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(23, 'MATHEUS DOMINGOS MARANGONI', NULL, '4501951400', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(24, 'MICAELLA EUGENIO DALMOLIM', NULL, '4550418442', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(25, 'PEDRO HENRIQUE DE SOUZA RIBEIRO', NULL, '4550426798', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(26, 'PEDRO VITOR MARCOLINO IRMAO', NULL, '4550416210', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(27, 'RAFAEL COELHO DE SOUZA', NULL, '4550416997', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(28, 'VITÓRIA DE ASSUNÇÃO DE MEDEIROS', NULL, '4550781105', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(29, 'ZAYMA KINSIONA', NULL, '4547902568', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(30, 'ADRIEL INACIO CARDOSO', NULL, '4550417233', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(31, 'ADRIELE DE OLIVEIRA STANO BRESSAN', NULL, '4550726619', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(32, 'ALBANO DA SILVA LIMA', NULL, '4550937881', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(33, 'ANA CAROLINA MARIANO DO ROSARIO', NULL, '4540189149', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(34, 'ANA JULIA DE SOUZA ALANO', NULL, '4545826899', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(35, 'ANDREI MARQUES DIAS', NULL, '4550419279', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(36, 'ANTONIO GABRIEL FERREIRA ZANETTE', NULL, '4545465101', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(37, 'BIANCA MICHELS DA SILVA', NULL, '4550639457', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(38, 'BRUNO DA SILVA MARTINS', NULL, '4540007172', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(39, 'CARLOS ZEFERINO BUTTNER', NULL, '4550419430', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(40, 'CAUAN MANENTI', NULL, '4540007156', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(41, 'DAVI MACHADO TOMAZ', NULL, '4550417497', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(42, 'EMILI CECCONI PARANAGUÁ', NULL, '4541264934', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(43, 'ERIK ZILLI', NULL, '4550420935', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(44, 'GABRIEL MARTINS MEDEIROS', NULL, '4545711781', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(45, 'GUSTAVO DE REZENDE BIAVA', NULL, '4550420510', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(46, 'HIGOR WARMLING CAVANHOLI', NULL, '4545837084', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(47, 'JHONATA RODRIGUES MATTOS', NULL, '4501547102', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(48, 'JOÃO VITOR DA SILVA MIGUEL', NULL, '4550439121', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(49, 'KAUA DOS SANTOS DE SOUZA', NULL, '4501971694', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(50, 'KAUAN DA SILVA ALEXANDRE', NULL, '4543242610', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(51, 'KAUANE TERRA LUCAS', NULL, '4550420692', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(52, 'KEVIN DE MORAIS SPRÍCIGO', NULL, '4550420587', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(53, 'LEONARDO MATIAS MACHADO', NULL, '4546039122', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(54, 'LUCAS ADRIANO DA COSTA', NULL, '4545726207', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(55, 'MAURICIO NASCIMENTO MENDES', NULL, '4550421249', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(56, 'NICHOLAS VENDRAME FABRE', NULL, '4543242300', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(57, 'NICOLAS FORMIGONI DE SOUZA', NULL, '4544306549', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(58, 'OTTO SIMAO WELINSKI RIGOBELLO', NULL, '4501956584', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(59, 'PEDRO HENRIQUE MORAES DA SILVA', NULL, '4550419295', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(60, 'REGIS COSTA PEDRO', NULL, '4545633349', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(61, 'SAMUEL FRAGA NUNES', NULL, '4550474857', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(62, 'SARA DA SILVA VIEIRA', NULL, '4545684261', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(63, 'SUIANE ROSA HENRIQUE', NULL, '4540187057', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(64, 'TIAGO GABRIEL PEREIRA TEIXEIRA', NULL, '4542384208', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(65, 'ALESSANDRO DE JESUS DE SÁ', NULL, '4550417837', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(66, 'ARTUR DA ROSA BRISTOT', NULL, '4544562251', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(67, 'BEATRIZ DE ASSUNCAO ELIAS', NULL, '4540732616', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(68, 'EDUARDO DOS SANTOS GOULART', NULL, '4550465688', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(69, 'ELIEZER QUEMUEL GOMES CLAUDINO', NULL, '4550423870', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(70, 'ERICA ROCHA MARTINS RODRIGUES', NULL, '4550416326', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(71, 'FELIPE ROSSETTO DA SILVA', NULL, '4501956673', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(72, 'FILIPE SILVA SALVADOR', NULL, '4550449003', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(73, 'GABRIEL DOS SANTOS JULIO', NULL, '4550425201', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(74, 'GABRIEL SERAFIM NART', NULL, '4545458466', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(75, 'GABRIELA DELFINO CORRÊA', NULL, '4545827372', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(76, 'GABRIELA FERNANDES SANTANA', NULL, '4501536259', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(77, 'GUILHERME FRANCISCO FERNANDES DE SOUZA', NULL, '4547657202', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(78, 'GUSTAVO FREITAS BELEGANTE', NULL, '4550829027', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(79, 'GUSTAVO TOPANOTTI FERNANDES FELIPE', NULL, '4548684777', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(80, 'HENRIQUE FREITAS GONÇALVES', NULL, '4545842800', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(81, 'IVAN RONSANI DA SILVA', NULL, '4550421079', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(82, 'JOÃO LUCAS MONTEIRO PANTALEÃO', NULL, '4550101856', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(83, 'JOAO PEDRO FREITAS PONCIANO', NULL, '4501745060', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(84, 'JOÃO VITOR BIANCHINI DOS PASSOS', NULL, '4543783815', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(85, 'JOAO VITOR MARTINS', NULL, '4501955880', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(86, 'JONATAN DA SILVA LOURENÇO', NULL, '4550422830', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(87, 'LIANDER DE ALMEIDA NUNES', NULL, '4549156600', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(88, 'LUCAS DE AGUIAR CUNHASKI', NULL, '4550422091', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(89, 'MARCELO DOS SANTOS SCHULER', NULL, '4543269208', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(90, 'MARCOS ANDRE NASCIMENTO BATISTA CRUZ', NULL, '4500683355', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(91, 'MARIA EDUARDA DOS PASSOS REBELLO', NULL, '4501956142', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(92, 'MICAELI ESPINDOLA DE ARAUJO', NULL, '4550427450', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(93, 'RAFAEL AUGUSTO TEIXEIRA RODRIGUES', NULL, '4550427646', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(94, 'WESLLEY THIAGO DE MORAES DA COSTA', NULL, '4550424272', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(95, 'ALESSANDRO TRAMONTIN FRIGO', NULL, '4550418680', NULL, NULL, NULL, NULL, NULL, NULL, 4),
(96, 'CAIO DA SILVA FERNANDES', NULL, '4501704178', NULL, NULL, NULL, NULL, NULL, NULL, 4),
(97, 'CAIO DEOLINDO', NULL, '4550427484', NULL, NULL, NULL, NULL, NULL, NULL, 4),
(98, 'CAMILLA LUCIETTI', NULL, '4541964804', NULL, NULL, NULL, NULL, NULL, NULL, 4),
(99, 'CECILIA HORACIO RUFINO', NULL, '4549780869', NULL, NULL, NULL, NULL, NULL, NULL, 4),
(100, 'CHAUAN DA SILVA DE VILLA', NULL, '4501825714', NULL, NULL, NULL, NULL, NULL, NULL, 4),
(101, 'DJENIFER DE SOUZA DE ALMEIDA', NULL, '4550432534', NULL, NULL, NULL, NULL, NULL, NULL, 4),
(102, 'EDER CAMPOS ANDRÉ', NULL, '4550456441', NULL, NULL, NULL, NULL, NULL, NULL, 4),
(103, 'EDUARDO SIEGLITZ DA SILVEIRA', NULL, '4551464120', NULL, NULL, NULL, NULL, NULL, NULL, 4),
(104, 'EMYLI GHEDIN', NULL, '4540683739', NULL, NULL, NULL, NULL, NULL, NULL, 4),
(105, 'ENZO DE SOUZA HINGST', NULL, '4501527365', NULL, NULL, NULL, NULL, NULL, NULL, 4),
(106, 'GIOVANA ZANONI CESARIO DA SILVA', NULL, '4550997230', NULL, NULL, NULL, NULL, NULL, NULL, 4),
(107, 'GUILHERME DE FRAGA VENANCIO', NULL, '4550727356', NULL, NULL, NULL, NULL, NULL, NULL, 4),
(108, 'JOÃO VICTOR SZYNDROWSKI DA SILVA', NULL, '4550439237', NULL, NULL, NULL, NULL, NULL, NULL, 4),
(109, 'JOÃO VITOR FACHIN SALVADOR', NULL, '4550998325', NULL, NULL, NULL, NULL, NULL, NULL, 4),
(110, 'JONATAS LUIZ EVANGELISTA DA COSTA', NULL, '4541495995', NULL, NULL, NULL, NULL, NULL, NULL, 4),
(111, 'LEONARDO RIBEIRO KULKAMP', NULL, '4542742830', NULL, NULL, NULL, NULL, NULL, NULL, 4),
(112, 'LUCA SALVADEGO', NULL, '4545449947', NULL, NULL, NULL, NULL, NULL, NULL, 4),
(113, 'MARCOS VINICIUS VALMARATI SORATO', NULL, '4540186654', NULL, NULL, NULL, NULL, NULL, NULL, 4),
(114, 'MATEUS WESLER MARTINS', NULL, '4545591590', NULL, NULL, NULL, NULL, NULL, NULL, 4),
(115, 'SIMEI DE SOUZA MONDARDO', NULL, '4550439580', NULL, NULL, NULL, NULL, NULL, NULL, 4),
(116, 'VITOR BERNARDINO AMARAL', NULL, '4540095748', NULL, NULL, NULL, NULL, NULL, NULL, 4),
(117, 'VITORIA ALVES ZANELLATO', NULL, '4545811972', NULL, NULL, NULL, NULL, NULL, NULL, 4),
(118, 'VITORIA EMANUELA DE COSTA RAMOS', NULL, '4548706592', NULL, NULL, NULL, NULL, NULL, NULL, 4),
(119, 'YASMIN MENDONÇA', NULL, '4550418108', NULL, NULL, NULL, NULL, NULL, NULL, 4),
(120, 'YURI SANTOS GACHO', NULL, '4544727498', NULL, NULL, NULL, NULL, NULL, NULL, 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `controle`
--

CREATE TABLE `controle` (
  `id_controle` int(11) NOT NULL,
  `data_cont` date DEFAULT NULL,
  `turma` int(3) DEFAULT NULL,
  `periodo` enum('Matutino','Vespertino','Noturno') DEFAULT NULL,
  `qtde_aula` int(11) NOT NULL,
  `id_discTurma` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `id_disciplina` int(11) NOT NULL,
  `nome_disciplina` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `disciplina`
--

INSERT INTO `disciplina` (`id_disciplina`, `nome_disciplina`) VALUES
(1, 'Teste de Software'),
(2, 'Desenvolvimento de Sistemas'),
(3, 'PD. Moveis'),
(4, 'Programação de Aplicativos'),
(5, 'IM. Sistemas'),
(6, 'Modelagem de Sistemas');

-- --------------------------------------------------------

--
-- Estrutura para tabela `disc_turma`
--

CREATE TABLE `disc_turma` (
  `id_discTurma` int(11) NOT NULL,
  `id_disc` int(11) DEFAULT NULL,
  `id_turma` int(11) DEFAULT NULL,
  `id_professor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `falta`
--

CREATE TABLE `falta` (
  `id_falta` int(11) NOT NULL,
  `controle_id` int(11) DEFAULT NULL,
  `aluno_id` int(11) DEFAULT NULL,
  `qtde_faltas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `notificacao`
--

CREATE TABLE `notificacao` (
  `id_notificacao` int(11) NOT NULL,
  `mensagem` text DEFAULT NULL,
  `tempo_notificaccao` datetime DEFAULT NULL,
  `faltas` int(11) DEFAULT NULL,
  `id_falta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `professor`
--

CREATE TABLE `professor` (
  `id_professor` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_nascimento` date NOT NULL,
  `cpf` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `turma`
--

CREATE TABLE `turma` (
  `id_turma` int(11) NOT NULL,
  `numero_turma` int(3) DEFAULT NULL,
  `nome_curso` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `turma`
--

INSERT INTO `turma` (`id_turma`, `numero_turma`, `nome_curso`) VALUES
(1, 151, 'Informática'),
(2, 152, 'Informática'),
(3, 153, 'Informática'),
(4, 154, 'Informática'),
(5, 251, 'Informática'),
(6, 252, 'Informática'),
(7, 253, 'Informática'),
(8, 254, 'Informática'),
(9, 351, 'Informática'),
(10, 352, 'Informática'),
(11, 353, 'Informática'),
(12, 354, 'Informática');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuarios` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `login` varchar(100) DEFAULT NULL,
  `senha` varchar(100) DEFAULT NULL,
  `tipo` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `nome`, `login`, `senha`, `tipo`) VALUES
(1, 'Evandro Vieira', '60943149991', '$2y$10$sBMxOtf/IT7McconQB4EQOq/lVIsJJh2MQg2Yd.uUB7bWtHddfg4y', 'p'),
(2, 'Isadora', '09780014942', '$2y$10$QGnbHhY.84iVzkbxq4ex2e7nO8Ymz3uYTXfqDvy5WtIYIxJ0j5aeC', 's'),
(3, 'Guilherme ', '11160757925', '$2y$10$tjqP4L18MfT/w.Lm6B96v.fXRvCZWqZTRMaFmH9qqp9LbZqPHJm9u', 'p');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id_alunos`),
  ADD KEY `id_turma` (`id_turma`);

--
-- Índices de tabela `controle`
--
ALTER TABLE `controle`
  ADD PRIMARY KEY (`id_controle`),
  ADD KEY `fk_controle_discTurma` (`id_discTurma`);

--
-- Índices de tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`id_disciplina`);

--
-- Índices de tabela `disc_turma`
--
ALTER TABLE `disc_turma`
  ADD PRIMARY KEY (`id_discTurma`),
  ADD KEY `id_disc` (`id_disc`),
  ADD KEY `id_turma` (`id_turma`),
  ADD KEY `fk_discTurma_professor` (`id_professor`);

--
-- Índices de tabela `falta`
--
ALTER TABLE `falta`
  ADD PRIMARY KEY (`id_falta`),
  ADD KEY `controle_id` (`controle_id`),
  ADD KEY `aluno_id` (`aluno_id`);

--
-- Índices de tabela `notificacao`
--
ALTER TABLE `notificacao`
  ADD PRIMARY KEY (`id_notificacao`),
  ADD KEY `fk_notificacao_falta` (`id_falta`);

--
-- Índices de tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`id_professor`);

--
-- Índices de tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`id_turma`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id_alunos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de tabela `controle`
--
ALTER TABLE `controle`
  MODIFY `id_controle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `id_disciplina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `disc_turma`
--
ALTER TABLE `disc_turma`
  MODIFY `id_discTurma` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `falta`
--
ALTER TABLE `falta`
  MODIFY `id_falta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `notificacao`
--
ALTER TABLE `notificacao`
  MODIFY `id_notificacao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `professor`
--
ALTER TABLE `professor`
  MODIFY `id_professor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `id_turma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `alunos`
--
ALTER TABLE `alunos`
  ADD CONSTRAINT `id_turma` FOREIGN KEY (`id_turma`) REFERENCES `turma` (`id_turma`);

--
-- Restrições para tabelas `controle`
--
ALTER TABLE `controle`
  ADD CONSTRAINT `controle_ibfk_1` FOREIGN KEY (`id_controle`) REFERENCES `disc_turma` (`id_discTurma`);

--
-- Restrições para tabelas `disc_turma`
--
ALTER TABLE `disc_turma`
  ADD CONSTRAINT `disc_turma_ibfk_1` FOREIGN KEY (`id_disc`) REFERENCES `disciplina` (`id_disciplina`),
  ADD CONSTRAINT `disc_turma_ibfk_2` FOREIGN KEY (`id_turma`) REFERENCES `turma` (`id_turma`),
  ADD CONSTRAINT `fk_discTurma_professor` FOREIGN KEY (`id_professor`) REFERENCES `professor` (`id_professor`);

--
-- Restrições para tabelas `falta`
--
ALTER TABLE `falta`
  ADD CONSTRAINT `falta_ibfk_1` FOREIGN KEY (`controle_id`) REFERENCES `controle` (`id_controle`);

--
-- Restrições para tabelas `notificacao`
--
ALTER TABLE `notificacao`
  ADD CONSTRAINT `notificacao_ibfk_1` FOREIGN KEY (`id_notificacao`) REFERENCES `falta` (`id_falta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
