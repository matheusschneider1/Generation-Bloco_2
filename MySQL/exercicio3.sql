#Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. 
#Crie uma tabela estudantes e utilizando a habilidade de abstração 
#e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
#Insira nesta tabela no mínimo 8 dados (registros).
#Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.
#Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.
#Ao término atualize um registro desta tabela através de uma query de atualização.
#Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) 
#e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.

CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE db_alunos(
id BIGINT AUTO_INCREMENT,
data_nascimento DATE NOT NULL,
nome VARCHAR(255) NOT NULL,
série VARCHAR(255) NOT NULL,
responsável VARCHAR(255) NOT NULL,
nota DECIMAL (4,2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO db_alunos (data_nascimento, nome, série, responsável, nota) VALUES
('2011-05-23', 'Ana Beatriz Silva', '6º ano', 'Carla Silva', 8.50),
('2010-09-17', 'Lucas Fernandes', '7º ano', 'Marcos Fernandes', 7.30),
('2012-02-08', 'Gabriel Souza', '5º ano', 'Fernanda Souza', 9.20),
('2011-12-30', 'Mariana Lopes', '6º ano', 'Rogério Lopes', 6.80),
('2013-06-14', 'Isabela Rocha', '4º ano', 'Tatiane Rocha', 8.90),
('2010-03-05', 'Pedro Henrique Lima', '7º ano', 'Amanda Lima', 5.75),
('2012-11-22', 'Larissa Martins', '5º ano', 'Bruno Martins', 9.50),
('2013-08-01', 'João Victor Ribeiro', '4º ano', 'Luciana Ribeiro', 6.40);

SELECT * FROM db_alunos;

SELECT * FROM db_alunos WHERE nota > 7.0;

SELECT * FROM db_alunos WHERE nota < 7.0;

UPDATE db_alunos
SET nota = 7.3
WHERE id = 4;


