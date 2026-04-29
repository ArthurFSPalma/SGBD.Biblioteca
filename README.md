# 📚 Sistema de Biblioteca - Banco de Dados

Projeto acadêmico de modelagem e implementação de banco de dados para um **Sistema de Biblioteca**, desenvolvido utilizando **PostgreSQL**.

O sistema permite o gerenciamento de:

- Categorias de livros  
- Editoras  
- Autores  
- Bibliotecários  
- Clientes  
- Estantes  
- Livros  
- Exemplares  
- Empréstimos  

---

## 👨‍💻 Integrantes

- Arthur Francisco da Silva Palma  
- Eduardo Akutagawa Hayashi  
- Kaio Araújo Vieira  

---

## 🛠 Tecnologias Utilizadas

- PostgreSQL  
- SQL (DDL, DML e Consultas)

---

## 📂 Estrutura do Projeto


📁 projeto-biblioteca/
│── ArthurEduardoKaio_objetosBD.sql   # Criação das tabelas
│── dadosBD.sql                       # Inserção de dados
│── consultas.sql                     # Consultas SQL
│── Projeto Lógico relacional.pdf     # Modelagem lógica

---

🧱 Modelo do Banco de Dados

O banco foi estruturado com base no modelo relacional, contendo as seguintes tabelas:

Principais Entidades
CATEGORIA
EDITORA
AUTOR
BIBLIOTECARIO
CLIENTE
ESTANTE
LIVRO
EXEMPLAR
EMPRESTIMO
Relacionamentos
Um livro pertence a uma categoria
Um livro é publicado por uma editora
Um livro pode ter vários autores (LIVRO_AUTOR)
Um livro possui exemplares
Um cliente pode realizar empréstimos
Um bibliotecário registra empréstimos
🚀 Como Executar
1️⃣ Criar o Banco

No PostgreSQL:

CREATE DATABASE biblioteca;
2️⃣ Acessar o banco
\c biblioteca
3️⃣ Executar os Scripts na Ordem
\i ArthurEduardoKaio_objetosBD.sql
\i dadosBD.sql
\i consultas.sql
📌 Funcionalidades Implementadas
✔ Criação das tabelas com:
Chaves primárias
Chaves estrangeiras
Relacionamentos 1:N
Relacionamentos N:M
✔ Inserção de dados fictícios

Dados para testes em todas as tabelas.

✔ Consultas SQL

Incluindo:

SELECT + WHERE + ORDER BY
GROUP BY + COUNT
INNER JOIN
LEFT JOIN
JOIN entre múltiplas tabelas
🔍 Exemplos de Consultas
Livros e suas editoras
SELECT l.titulo, e.nome AS editora
FROM LIVRO l
INNER JOIN EDITORA e
ON l.cnpj_editora = e.cnpj;
Total de livros por categoria
SELECT cod_categoria, COUNT(*) AS total_livros
FROM LIVRO
GROUP BY cod_categoria;
Histórico de empréstimos
SELECT cli.nome AS cliente,
       bib.nome AS bibliotecario,
       liv.titulo AS livro
FROM EMPRESTIMO emp
INNER JOIN CLIENTE cli ON emp.cpf_cliente = cli.cpf
INNER JOIN BIBLIOTECARIO bib ON emp.mat_bibliotecario = bib.matricula
INNER JOIN EXEMPLAR ex ON emp.cod_exemplar = ex.codigo
INNER JOIN LIVRO liv ON ex.isbn_livro = liv.isbn;
📘 Objetivo Acadêmico

Este projeto foi desenvolvido para praticar conceitos de:

Modelagem Entidade-Relacionamento
Normalização
SQL DDL e DML
Consultas Avançadas
Integridade Referencial
📄 Licença

Projeto acadêmico para fins educacionais.
