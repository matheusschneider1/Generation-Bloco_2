CREATE DATABASE db_listasql1;
USE db_listasql1;

CREATE TABLE colaboradores(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	cargo VARCHAR(255) NOT NULL,
    data_admissao DATE NOT NULL,
	salario DECIMAL (10,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO colaboradores(nome, cargo, data_admissao, salario) 
VALUES ("Mario Silva","Análista de Dados", "2022-02-08", 3500.00);
INSERT INTO colaboradores(nome, cargo, data_admissao, salario) 
VALUES ("Ana Maria","Desenvolvedora Java Pleno", "2021-06-05", 5500.00);
INSERT INTO colaboradores(nome, cargo, data_admissao, salario) 
VALUES ("Letícia","Desenvolvedora FullStack Junior", "2024-02-21", 3100.00);
INSERT INTO colaboradores(nome, cargo, data_admissao, salario) 
VALUES ("João Alberto","Estagiário de Desenvolvimento", "2025-04-06", 1500.00);
INSERT INTO colaboradores(nome, cargo, data_admissao, salario) 
VALUES ("Ricardo Nogueira","Assistente de suporte técnico", "2025-01-25", 1800.00);
INSERT INTO colaboradores(nome, cargo, data_admissao, salario) 
VALUES ("Amanda Silva","Gerente de operação", "2017-05-22", 10200.00);
INSERT INTO colaboradores(nome, cargo, data_admissao, salario) 
VALUES ("Marcus Leite","Lider Geral", "2015-01-27", 17000.00);

SELECT * FROM colaboradores;

SELECT * FROM colaboradores WHERE salario > 2000.00;

SELECT * FROM colaboradores WHERE salario < 2000.00;

SELECT * FROM colaboradores WHERE nome = 'Letícia';

UPDATE colaboradores
SET salario = 4100.00
WHERE id = 3;


