DROP DATABASE Principal;

CREATE DATABASE Principal;

USE Principal;

CREATE TABLE MagicCard (
	cardId INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(40) NOT NULL,
	cmc INT NOT NULL,
	custoMana VARCHAR(20) NOT NULL,
	frente BOOL DEFAULT 1,
	numeroCard INT NOT NULL,
	edicaoId INT NOT NULL,
	especialEdition BOOL DEFAULT FALSE,
	nomeEdicaoEspecial VARCHAR(40) NULL,
	jogoId INT NOT NULL,
	dtAlteracao DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	dtCadastro DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO MagicCard 
(
	nome,
	cmc,
	custoMana,
	numeroCard,
	edicaoId,
	jogoId
) 
VALUES 
(
	'Liliana do Véu',
	'3',
	'1BB',
	123,
	13,
	1
);

SELECT * FROM MagicCard;