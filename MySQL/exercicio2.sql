#Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce. 
#Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.
#Insira nesta tabela no mínimo 8 dados (registros).
#Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
#Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
#Ao término atualize um registro desta tabela através de uma query de atualização.
#Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL)
#e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.

CREATE DATABASE db_eletronicos;

USE db_eletronicos;

CREATE TABLE db_produtos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	categoria VARCHAR(255) NOT NULL,
    data_compra DATE NOT NULL,
	preço DECIMAL (10,2) NOT NULL,
    PRIMARY KEY (id)
    );
    
INSERT INTO db_produtos (nome, categoria, data_compra, preço) VALUES
("Samsung Galaxy S23","Smartphone", "2024-04-20", 3500.00),
("Notebook Dell Inspiron 15","Computador", "2023-02-14", 3800.00),
("Iphone 15 PRO Max","Smartphone", "2023-10-27", 8500.00),
("X-box 0NE","Console", "2021-03-12", 2579.00),
("Notebook Acer","Computador", "2023-08-06", 4400.00),
("Playstation 5","Console", "2024-08-25", 3600.00),
("Campinha Iphone 15","Acessórios", "2023-12-07", 25.00),
("Campinha Sansumg Galaxy S23","Acessórios", "2024-07-18", 30.00);

SELECT * FROM db_produtos;

SELECT * FROM db_produtos WHERE preço > 500;

SELECT * FROM db_produtos WHERE preço < 500;

UPDATE db_produtos
SET PREÇO = 7900.00
WHERE id = 3;

