-- Criação das tabelas do trabalho de Banco de Dados (PostgreSQL)

CREATE TABLE CATEGORIA (
    codigo SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE EDITORA (
    cnpj VARCHAR(20) PRIMARY KEY,
    nome VARCHAR(60) NOT NULL,
    cidade VARCHAR(40)
);

CREATE TABLE AUTOR (
    codigo SERIAL PRIMARY KEY,
    nome VARCHAR(60) NOT NULL,
    nacionalidade VARCHAR(40)
);

CREATE TABLE BIBLIOTECARIO (
    matricula SERIAL PRIMARY KEY,
    nome VARCHAR(60) NOT NULL
);

CREATE TABLE CLIENTE (
    cpf VARCHAR(20) PRIMARY KEY,
    nome VARCHAR(60) NOT NULL,
    telefone VARCHAR(20)
);

CREATE TABLE ESTANTE (
    numero SERIAL PRIMARY KEY,
    altura INT,
    largura INT,
    cod_categoria INT REFERENCES CATEGORIA(codigo)
);

CREATE TABLE LIVRO (
    isbn VARCHAR(20) PRIMARY KEY,
    titulo VARCHAR(80) NOT NULL,
    cod_categoria INT REFERENCES CATEGORIA(codigo),
    cnpj_editora VARCHAR(20) REFERENCES EDITORA(cnpj)
);

CREATE TABLE LIVRO_AUTOR (
    isbn_livro VARCHAR(20) REFERENCES LIVRO(isbn),
    cod_autor INT REFERENCES AUTOR(codigo),
    PRIMARY KEY (isbn_livro, cod_autor)
);

CREATE TABLE EXEMPLAR (
    codigo SERIAL PRIMARY KEY,
    nro_edicao INT,
    nro_paginas INT,
    isbn_livro VARCHAR(20) REFERENCES LIVRO(isbn)
);

CREATE TABLE EMPRESTIMO (
    cod_emprestimo SERIAL PRIMARY KEY,
    data_devolucao DATE,
    mat_bibliotecario INT REFERENCES BIBLIOTECARIO(matricula),
    cpf_cliente VARCHAR(20) REFERENCES CLIENTE(cpf),
    cod_exemplar INT REFERENCES EXEMPLAR(codigo)
);
