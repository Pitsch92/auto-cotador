CREATE TABLE fornecedores (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    contato VARCHAR(100),
    email VARCHAR(100),
    cnpj VARCHAR(18),
    criado_em TIMESTAMP DEFAULT NOW()
);

CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    unidade VARCHAR(20),
    criado_em TIMESTAMP DEFAULT NOW()
);

CREATE TABLE precos (
    id SERIAL PRIMARY KEY,
    produto_id INT REFERENCES produtos(id),
    fornecedor_id INT REFERENCES fornecedores(id),
    preco NUMERIC(10,2),
    icms NUMERIC(5,2),
    data_cotacao DATE DEFAULT CURRENT_DATE
);

CREATE TABLE pedidos (
    id SERIAL PRIMARY KEY,
    data_pedido TIMESTAMP DEFAULT NOW(),
    status VARCHAR(20) DEFAULT 'PENDENTE'
);

CREATE TABLE itens_pedido (
    id SERIAL PRIMARY KEY,
    pedido_id INT REFERENCES pedidos(id),
    produto_id INT REFERENCES produtos(id),
    quantidade NUMERIC(10,2),
    preco_unitario NUMERIC(10,2)
);