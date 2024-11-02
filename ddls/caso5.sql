CREATE TABLE if not EXISTS Clientes (
    ID_Cliente INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    CPF VARCHAR(15) NOT NULL UNIQUE,
    Data_Nascimento DATE NOT NULL,
    Endereco VARCHAR(100),
);

CREATE TABLE if not EXISTS Fornecedores (
    ID_Fornecedor INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Telefone VARCHAR(100),
    Email VARCHAR(100),
    Endereco VARCHAR(100)
);

CREATE TABLE if not EXISTS Produtos (
    ID_Produto INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Preco DECIMAL(10, 2) NOT NULL,
    Quantidade_Estoque INT NOT NULL,
    ID_Fornecedor INT,
);

CREATE TABLE if not EXISTS Vendas (
    ID_Venda INT PRIMARY KEY AUTO_INCREMENT,
    ID_Cliente INT,
    Data_Venda DATE NOT NULL,
    Forma_Pagamento VARCHAR(100),
);

CREATE TABLE if not EXISTS Itens_Venda (
    ID_Item INT PRIMARY KEY,
    ID_Venda INT,
    ID_Produto INT,
    Quantidade INT NOT NULL,
    Preco_Venda DECIMAL(10, 2) NOT NULL,
);

CREATE TABLE if not EXISTS Pagamentos (
    ID_Pagamento INT PRIMARY KEY,
    ID_Venda INT,
    Data_Pagamento DATE NOT NULL,
    Valor DECIMAL(10, 2) NOT NULL,
);