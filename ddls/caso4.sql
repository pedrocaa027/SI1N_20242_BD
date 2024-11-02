CREATE TABLE if not EXISTS Alunos (
    ID_Aluno INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    CPF VARCHAR(100) NOT NULl,
    Data_Nascimento DATE NOT NULL,
    Endereco VARCHAR(255)
);

CREATE TABLE if not EXISTS Instrutores (
    ID_Instrutor INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Especialidade VARCHAR(100)
);

CREATE TABLE if not EXISTS Modalidades (
    ID_Modalidade INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
);

CREATE TABLE if not EXISTS Planos_Treinamento (
    ID_Plano INT PRIMARY KEY,
    ID_Aluno INT,
    ID_Instrutor INT,
    Descricao TEXT,
    Data_Criacao DATE NOT NULL,
);

CREATE TABLE if not EXISTS Aulas (
    ID_Aula INT PRIMARY KEY,
    ID_Modalidade INT,
    ID_Instrutor INT,
    Horario TIME NOT NULL,
    Capacidade INT NOT NULL,
    Data DATE NOT NULL,
  );

CREATE TABLE if not EXISTS Pagamentos (
    ID_Pagamento INT PRIMARY KEY,
    ID_Aluno INT,
    Data_Pagamento DATE NOT NULL,
    Valor DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (ID_Aluno) REFERENCES Alunos(ID_Aluno)
);

CREATE TABLE if not EXISTS Matriculas (
    ID_Matricula INT PRIMARY KEY,
    ID_Aluno INT,
    ID_Modalidade INT,
    Data_Matricula DATE NOT NULL,
);