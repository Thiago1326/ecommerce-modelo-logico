
-- Criação do banco (opcional)
CREATE DATABASE ecommerce;
USE ecommerce;

-- Tabela: Cliente
CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100),
    tipo_cliente ENUM('PF', 'PJ') NOT NULL
);

-- Tabela: Pagamento (Cliente pode ter múltiplos)
CREATE TABLE Pagamento (
    id_pagamento INT PRIMARY KEY,
    id_cliente INT,
    forma_pagamento VARCHAR(50),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

-- Tabela: Pedido
CREATE TABLE Pedido (
    id_pedido INT PRIMARY KEY,
    data DATE,
    status VARCHAR(50),
    cod_rastreio VARCHAR(100),
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

-- Tabela: Produto
CREATE TABLE Produto (
    id_produto INT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10, 2)
);

-- Tabela: Estoque
CREATE TABLE Estoque (
    id_produto INT PRIMARY KEY,
    qtd INT,
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

-- Tabela: Entrega
CREATE TABLE Entrega (
    id_entrega INT PRIMARY KEY,
    id_pedido INT,
    id_produto INT,
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

-- Tabela: Fornecedor
CREATE TABLE Fornecedor (
    id_vend INT PRIMARY KEY
);

-- Tabela: Vendedor
CREATE TABLE Vendedor (
    id_vend INT PRIMARY KEY
);

-- Tabela: Fornece (Fornecedor → Produto)
CREATE TABLE Fornece (
    id_vend INT,
    id_produto INT,
    PRIMARY KEY (id_vend, id_produto),
    FOREIGN KEY (id_vend) REFERENCES Fornecedor(id_vend),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

-- Tabela: Vendedor_Fornecedor (Vendedor também pode ser Fornecedor)
CREATE TABLE Vendedor_Fornecedor (
    id_vend INT PRIMARY KEY,
    FOREIGN KEY (id_vend) REFERENCES Vendedor(id_vend)
);
