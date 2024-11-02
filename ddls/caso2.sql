CREATE TABLE if not EXISTS Passageiro (
    ID_Passageiro INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    CPF VARCHAR(100) NOT NULL,
    Telefone VARCHAR(100),
    Endereco VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Aeroporto (
    ID_Aeroporto INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Localizacao VARCHAR(100)
);

CREATE TABLE if not EXISTS Aeronave (
    ID_Aeronave INT PRIMARY KEY,
    Modelo VARCHAR(100) NOT NULL,
    Capacidade INT ,
);

CREATE TABLE if not EXISTS Funcionario (
    ID_Funcionario INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Cargo VARCHAR(100),
    Telefone VARCHAR(100)
);

CREATE TABLE if not EXISTS Voo (
    ID_Voo INT PRIMARY KEY,
    Data_Hora_Partida DATETIME NOT NULL,
    Data_Hora_Chegada DATETIME NOT NULL,
    ID_Aeroporto_Origem INT,
    ID_Aeroporto_Destino INT,
    ID_Aeronave INT,
    FOREIGN KEY (ID_Aeroporto_Origem) REFERENCES Aeroporto(ID_Aeroporto),
    FOREIGN KEY (ID_Aeroporto_Destino) REFERENCES Aeroporto(ID_Aeroporto),
);

CREATE TABLE if not EXISTS Reserva (
    ID_Reserva INT PRIMARY KEY,
    ID_Passageiro INT,
    ID_Voo INT,
    Data_Reserva DATE NOT NULL,
    Status VARCHAR(20) CHECK (Status IN ('confirmada', 'cancelada')),
    FOREIGN KEY (ID_Passageiro) REFERENCES Passageiro(ID_Passageiro),
  

CREATE TABLE if not EXISTS Operacao_Voo (
    ID_Operacao INT PRIMARY KEY,
    ID_Voo INT,
    ID_Funcionario INT,
    FOREIGN KEY (ID_Voo) REFERENCES Voo(ID_Voo),
);
