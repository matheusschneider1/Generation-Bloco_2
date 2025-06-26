CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    validade DATE NOT NULL,
    marca VARCHAR(100) NOT NULL,
    id_categoria BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Medicamentos', 'Remédios com e sem prescrição'),
('Cosméticos', 'Produtos de higiene e beleza'),
('Suplementos', 'Vitaminas e minerais'),
('Infantil', 'Produtos para cuidados com bebês'),
('Dermocosméticos', 'Produtos para cuidados com a pele');

INSERT INTO tb_produtos (nome, preco, validade, marca, id_categoria) VALUES
('Paracetamol 500mg', 12.50, '2026-03-01', 'Genérico', 1),
('Shampoo Anticaspa', 32.90, '2025-11-10', 'Head&Shoulders', 2),
('Vitamina C', 55.00, '2026-06-15', 'Cewin', 3),
('Pomada para Assadura', 22.00, '2025-09-20', 'Bepantol Baby', 4),
('Protetor Solar FPS 60', 78.90, '2026-01-01', 'La Roche-Posay', 5),
('Creme Anti-idade', 95.00, '2025-12-31', 'Vichy', 5),
('Fralda Descartável G', 60.00, '2025-10-10', 'Pampers', 4),
('Colágeno Hidrolisado', 49.99, '2026-02-15', 'Sanavita', 3);

# Apenas produtos com valor > R$ 50,00
SELECT * FROM tb_produtos WHERE preco > 50.00;

#Produtos com valor entre R$ 5,00 e R$ 60,00
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

#Produtos com a letra 'C' no nome
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

#SELECT com INNER JOIN: unir produtos + categorias
SELECT p.id, p.nome, p.preco, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id;

#SELECT com INNER JOIN: apenas produtos da categoria 'Cosméticos'
SELECT p.id, p.nome, p.preco, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id
WHERE c.nome = 'Cosméticos';
