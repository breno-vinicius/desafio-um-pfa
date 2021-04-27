CREATE DATABASE desafio_um_pfa
  CHARACTER SET utf8
  COLLATE utf8_general_ci;

USE desafio_um_pfa;

CREATE TABLE desafio_um_pfa.modulo (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	nome varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	CONSTRAINT modulo_PK PRIMARY KEY (id),
	CONSTRAINT modulo_nome_UN UNIQUE KEY (nome)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;

INSERT INTO desafio_um_pfa.modulo (`nome`) VALUES ("Docker"), ("Integração contínua"), ("Kubernetes"), ("Fundamentos de arquitetura de software"), ("Comunicação");
