CREATE TABLE if NOT EXISTS Alunos (
    Matricula INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Curso VARCHAR(100) NOT NULL,
    Professor VARCHAR(100),
);

CREATE TABLE if not EXISTS Cursos (
    Curso VARCHAR(100) PRIMARY KEY,
    Professor VARCHAR(100),
);
CREATE TABLE if not EXISTS Produtos (
    Codigo_Produto INT PRIMARY KEY,
    Preco DECIMAL(10, 2) NOT NULL,
    Categoria VARCHAR(100),
);

CREATE TABLE if not EXISTS Compras (
    Numero_Compra INT PRIMARY KEY,
    Data_Compra DATE NOT NULL,
    Codigo_Produto INT,
    Quantidade INT NOT NULL,
);
CREATE TABLE if not EXISTS Livros (
    ISBN VARCHAR(15) PRIMARY KEY,
    Titulo VARCHAR(100) NOT NULL,
    Autor VARCHAR(100) NOT NULL,
    Ano_Publicacao INT NOT NULL,
);

CREATE TABLE if not EXISTS Emprestimos (
    Numero_Emprestimo INT PRIMARY KEY,
    ISBN_Livro VARCHAR(15),
    Matricula_Aluno INT,
    Data_Emprestimo DATE NOT NULL,
    Data_Devolucao DATE,
);
CREATE TABLE if not EXISTS Funcionarios (
    ID_Funcionario INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Cargo VARCHAR(50),
    Departamento VARCHAR(100)
);
CREATE TABLE if not EXISTS Voos (
    Numero_Voo INT PRIMARY KEY,
    Origem VARCHAR(100) NOT NULL,
    Destino VARCHAR(100) NOT NULL,
    Data DATE NOT NULL,
    Hora_Partida TIME NOT NULL,
    Hora_Chegada TIME NOT NULL
);
