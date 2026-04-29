-- CONSULTAS DO TRABALHO DE BD
-- Arthur, Eduardo e Kaio

-- SELECT + WHERE + ORDER BY (uma por tabela)

-- Categoria
SELECT * FROM CATEGORIA
WHERE nome LIKE 'D%'
ORDER BY nome;

-- Editora
SELECT * FROM EDITORA
WHERE cidade = 'São Paulo'
ORDER BY nome;

-- Autor
SELECT * FROM AUTOR
WHERE nacionalidade = 'Brasil'
ORDER BY nome;

-- Bibliotecário
SELECT * FROM BIBLIOTECARIO
WHERE nome LIKE 'A%'
ORDER BY matricula;

-- Cliente
SELECT * FROM CLIENTE
WHERE telefone LIKE '%44%'
ORDER BY nome;

-- Estante
SELECT * FROM ESTANTE
WHERE altura > 185
ORDER BY numero;

-- Livro
SELECT * FROM LIVRO
WHERE cod_categoria = 1
ORDER BY titulo;

-- Exemplar
SELECT * FROM EXEMPLAR
WHERE nro_paginas > 300
ORDER BY codigo;

-- Empréstimo
SELECT * FROM EMPRESTIMO
WHERE data_devolucao > '2024-01-01'
ORDER BY cod_emprestimo;



-- (b) Consulta com GROUP BY (COUNT)
-- Esta consulta mostra quantos livros existem em cada categoria,
-- agrupando os resultados pelo código da categoria.
SELECT cod_categoria, COUNT(*) AS total_livros
FROM LIVRO
GROUP BY cod_categoria;



-- (c) INNER JOIN entre 2 tabelas
-- Esta consulta mostra o título de cada livro junto com o nome da editora
-- que o publicou, fazendo a junção das tabelas LIVRO e EDITORA.
SELECT l.titulo, e.nome AS editora
FROM LIVRO l
INNER JOIN EDITORA e
    ON l.cnpj_editora = e.cnpj;



-- (d) LEFT JOIN entre 2 tabelas
-- Esta consulta mostra todas as categorias, mesmo aquelas que não possuem
-- estantes associadas, usando LEFT JOIN entre CATEGORIA e ESTANTE.
SELECT c.nome AS categoria, e.numero AS estante
FROM CATEGORIA c
LEFT JOIN ESTANTE e
    ON c.codigo = e.cod_categoria;



-- (e) INNER JOIN com 3+ tabelas
-- Esta consulta mostra o nome do cliente, o nome do bibliotecário responsável
-- e o título do livro emprestado, unindo EMPRESTIMO, CLIENTE, BIBLIOTECARIO,
-- EXEMPLAR e LIVRO.
SELECT cli.nome AS cliente,
       bib.nome AS bibliotecario,
       liv.titulo AS livro
FROM EMPRESTIMO emp
INNER JOIN CLIENTE cli
    ON emp.cpf_cliente = cli.cpf
INNER JOIN BIBLIOTECARIO bib
    ON emp.mat_bibliotecario = bib.matricula
INNER JOIN EXEMPLAR ex
    ON emp.cod_exemplar = ex.codigo
INNER JOIN LIVRO liv
    ON ex.isbn_livro = liv.isbn;
