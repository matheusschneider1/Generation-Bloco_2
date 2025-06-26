#Cria o banco de dados
CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

#Cria a tabela de categorias
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    PRIMARY KEY (id)
);

#Cria a tabela de pizzas com a Foreign Key
CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    tamanho VARCHAR(20) NOT NULL,
    ingredientes TEXT NOT NULL,
    id_categoria BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Salgada', 'Pizzas com recheio salgado'),
('Doce', 'Pizzas com recheio doce'),
('Vegetariana', 'Sem carnes, com vegetais'),
('Especial', 'Receitas exclusivas da casa'),
('Tradicional', 'Sabores clássicos');

INSERT INTO tb_pizzas (nome, preco, tamanho, ingredientes, id_categoria) VALUES
('Calabresa', 47.90, 'Média', 'Calabresa, cebola, queijo', 1),
('Margherita', 42.50, 'Grande', 'Tomate, manjericão, queijo', 5),
('Chocolate', 55.00, 'Média', 'Chocolate, morango, leite condensado', 2),
('Portuguesa', 49.99, 'Grande', 'Presunto, ovo, cebola, ervilha', 1),
('Brócolis com Catupiry', 59.90, 'Média', 'Brócolis, catupiry, alho', 3),
('Quatro Queijos', 52.00, 'Média', 'Muçarela, gorgonzola, provolone, parmesão', 4),
('Banana com Canela', 44.00, 'Pequena', 'Banana, canela, açúcar', 2),
('Milho com Bacon', 50.00, 'Grande', 'Milho, bacon, queijo', 4);

#pizzas com valor > R$ 45,00
SELECT * FROM tb_pizzas WHERE preco > 45.00;

#Pizzas com valor entre R$ 50,00 e R$ 100,00
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

#Pizzas com a letra 'M' no nome
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

#SELECT com INNER JOIN: unir dados das pizzas com categorias
SELECT p.id, p.nome, p.preco, c.nome AS categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id;

#SELECT com INNER JOIN: apenas pizzas da categoria "Doce"
SELECT p.id, p.nome, p.preco, c.nome AS categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id
WHERE c.nome = 'Doce';
