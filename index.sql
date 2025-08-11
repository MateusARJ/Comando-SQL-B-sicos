-- Cria o banco de dados
CREATE DATABASE lojaBLL;
USE lojaBLL;

-- Criar tabela de clientes
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    cidade VARCHAR(50),
    idade INT
);

-- Criar tabela de produtos
CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL
);

-- Criar tabela de pedidos
CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    produto_id INT,
    quantidade INT NOT NULL,
    data_pedido DATE,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id),
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);
-- Inserir clientes
INSERT INTO clientes (nome, email, cidade, idade) VALUES
('Ana Souza', 'ana@email.com', 'São Paulo', 28),
('Carlos Lima', 'carlos@email.com', 'Rio de Janeiro', 35),
('Mariana Costa', 'mariana@email.com', 'Belo Horizonte', 22),
('Pedro Santos', 'pedro@email.com', 'Porto Alegre', 30),
('Fernanda Alves', 'fernanda@email.com', 'Curitiba', 26),
('Lucas Rocha', 'lucas@email.com', 'Recife', 29),
('Juliana Dias', 'juliana@email.com', 'Fortaleza', 31),
('Rafael Melo', 'rafael@email.com', 'Manaus', 33),
('Beatriz Nunes', 'beatriz@email.com', 'Salvador', 24),
('Gustavo Silva', 'gustavo@email.com', 'Brasília', 27);

-- Inserir produtos
INSERT INTO produtos (nome, preco, estoque) VALUES
('Notebook Dell', 3500.00, 5),
('Smartphone Samsung', 2000.00, 8),
('Teclado Mecânico', 350.00, 12),
('Mouse Gamer', 150.00, 15),
('Monitor LG 24"', 900.00, 7),
('Headset HyperX', 450.00, 10),
('Impressora HP', 600.00, 4),
('Cadeira Gamer', 1200.00, 3),
('HD Externo 1TB', 400.00, 9),
('Pen Drive 64GB', 50.00, 20);

-- Inserir pedidos
INSERT INTO pedidos (cliente_id, produto_id, quantidade, data_pedido) VALUES
(1, 2, 1, '2025-08-01'),
(2, 1, 1, '2025-08-02'),
(3, 4, 2, '2025-08-02'),
(4, 3, 1, '2025-08-03'),
(5, 6, 1, '2025-08-03'),
(6, 5, 1, '2025-08-04'),
(7, 9, 1, '2025-08-05'),
(8, 8, 1, '2025-08-05'),
(9, 7, 1, '2025-08-06'),
(10, 10, 3, '2025-08-06');
-- Altera o preço do produto 
UPDATE produtos
SET preco = 3600.00
WHERE nome = 'Notebook Dell';

-- Atualiza cidade do cliente 
UPDATE clientes
SET cidade = 'Niterói'
WHERE nome = 'Carlos Lima';
SELECT * FROM produtos;
