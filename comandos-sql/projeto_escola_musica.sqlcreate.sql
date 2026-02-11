CREATE DATABASE escola;
USE escola;

CREATE TABLE Orquestra (
    id_orquestra INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(100),
    pais VARCHAR(100),
    data_criacao DATE
);

CREATE TABLE Sinfonia (
    id_sinfonia INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    compositor VARCHAR(100),
    data_criacao DATE,
    id_orquestra INT,
    FOREIGN KEY (id_orquestra) REFERENCES Orquestra(id_orquestra)
);

CREATE TABLE Musico (
    id_musico INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    identidade VARCHAR(50) UNIQUE,
    nacionalidade VARCHAR(50),
    data_nascimento DATE,
    id_orquestra INT,
    FOREIGN KEY (id_orquestra) REFERENCES Orquestra(id_orquestra)
);

CREATE TABLE Funcao (
    id_funcao INT PRIMARY KEY,
    nome_funcao VARCHAR(50) NOT NULL
);

-- Relação Músico-Função-Sinfonia
CREATE TABLE Musico_Funcao_Sinfonia (
    id_musico INT,
    id_funcao INT,
    id_sinfonia INT,
    data_inicio DATE,
    PRIMARY KEY (id_musico, id_funcao, id_sinfonia),
    FOREIGN KEY (id_musico) REFERENCES Musico(id_musico),
    FOREIGN KEY (id_funcao) REFERENCES Funcao(id_funcao),
    FOREIGN KEY (id_sinfonia) REFERENCES Sinfonia(id_sinfonia)
);

CREATE TABLE Instrumento (
    id_instrumento INT PRIMARY KEY,
    nome VARCHAR(50),
    tipo VARCHAR(50)
);

-- Relação Músico-Instrumento-Sinfonia
CREATE TABLE Musico_Instrumento_Sinfonia (
    id_musico INT,
    id_instrumento INT,
    id_sinfonia INT,
    PRIMARY KEY (id_musico, id_instrumento, id_sinfonia),
    FOREIGN KEY (id_musico) REFERENCES Musico(id_musico),
    FOREIGN KEY (id_instrumento) REFERENCES Instrumento(id_instrumento),
    FOREIGN KEY (id_sinfonia) REFERENCES Sinfonia(id_sinfonia)
);