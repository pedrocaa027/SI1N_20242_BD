CREATE TABLE IF NOT EXISTS Fornecedor (
    ID_Fornecedor INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Endereco VARCHAR(100),
    Pais_Origem VARCHAR(100),
    Pessoa_Contato VARCHAR(100),
    Telefone VARCHAR(15),
);

CREATE TABLE IF NOT EXISTS produto (
    ID_Produto INT PRIMARY KEY,
    Nome_Produto VARCHAR(100) NOT NULL,
    Descricao TEXT,
    ID_Fornecedor INT,
);

CREATE TABLE if NOT EXISTS pedido (
    ID_Pedido INT PRIMARY KEY,
    Data_Pedido DATE NOT NULL,
);


CREATE TABLE if not EXISTS filial(
    ID_Filial INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Endereco VARCHAR(100),
);

CREATE TABLE if NOT EXISTS inventario (
    ID_Inventario INT PRIMARY KEY,
    ID_Produto INT,
    ID_Filial INT,
    Localizacao VARCHAR(100),
);
