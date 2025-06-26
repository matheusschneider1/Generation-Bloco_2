# Cria o banco de dados
CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

# Cria a tabela de classes
CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT,
    categoria VARCHAR(255) NOT NULL,
    descricao TEXT NOT NULL,
    PRIMARY KEY (id)
);

# Cria a tabela de personagens (com FK para classes)
CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    nivel INT NOT NULL,
    id_classe BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);

# Insere registros em tb_classes
INSERT INTO tb_classes (categoria, descricao) VALUES
('Guerreiro', 'Especialista em combate corpo a corpo'),
('Arqueiro', 'Ataques à distância com arco e flecha'),
('Mago', 'Usa magia elemental para atacar'),
('Assassino', 'Ataques rápidos e furtivos'),
('Cavaleiro', 'Alta defesa e ataque moderado');

# Insere registros em tb_personagens
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, id_classe) VALUES
('Luna', 2500, 1500, 12, 2),
('Drako', 3100, 900, 14, 1),
('Celina', 1800, 1800, 10, 3),
('Kael', 2700, 1600, 13, 4),
('Mira', 1500, 1100, 9, 2),
('Zayn', 4000, 800, 16, 1),
('Cassandra', 2200, 1900, 11, 5),
('Clovis', 2000, 1200, 10, 5);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

#Apenas personagens com a letra 'C' no nome
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

#SELECT com INNER JOIN: une personagens com classes
SELECT p.id, p.nome, c.categoria AS classe, p.poder_ataque, p.poder_defesa
FROM tb_personagens p
INNER JOIN tb_classes c ON p.id_classe = c.id;

#SELECT com INNER JOIN: apenas personagens da classe "Arqueiro"
SELECT p.id, p.nome, c.categoria AS classe, p.poder_ataque, p.poder_defesa
FROM tb_personagens p
INNER JOIN tb_classes c ON p.id_classe = c.id
WHERE c.categoria = 'Arqueiro';
