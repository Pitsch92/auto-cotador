-- INSERÇÃO DE FORNECEDORES
INSERT INTO fornecedores (nome, contato, email, cnpj) VALUES
('Natural Mix', 'Carlos Lima', 'contato@naturalmix.com', '45.123.456/0001-78'),
('Sabor Bom', 'Ana Souza', 'vendas@saborbom.com', '12.987.654/0001-33');

-- INSERÇÃO DE PRODUTOS
INSERT INTO produtos (nome, unidade) VALUES
('Açúcar Refinado', 'KG'),
('Farinha de Trigo', 'KG'),
('Cacau em Pó', 'KG');

-- INSERÇÃO DE PREÇOS
INSERT INTO precos (produto_id, fornecedor_id, preco, icms) VALUES
(1, 1, 7.85, 18.00),
(2, 1, 5.30, 12.00),
(3, 2, 18.60, 17.00);
