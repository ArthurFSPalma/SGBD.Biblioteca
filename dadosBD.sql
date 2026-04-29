-- Inserção de dados para o trabalho de BD
-- Arthur, Eduardo e Kaio

-- CATEGORIA
INSERT INTO CATEGORIA (nome) VALUES ('Informática');
INSERT INTO CATEGORIA (nome) VALUES ('Romance');
INSERT INTO CATEGORIA (nome) VALUES ('Terror');
INSERT INTO CATEGORIA (nome) VALUES ('História');
INSERT INTO CATEGORIA (nome) VALUES ('Drama');
INSERT INTO CATEGORIA (nome) VALUES ('Biografia');
INSERT INTO CATEGORIA (nome) VALUES ('Ficção Científica');

-- EDITORA
INSERT INTO EDITORA VALUES ('1111111', 'Alta Books', 'São Paulo');
INSERT INTO EDITORA VALUES ('2222222', 'Intrínseca', 'Rio de Janeiro');
INSERT INTO EDITORA VALUES ('3333333', 'Leya', 'Curitiba');
INSERT INTO EDITORA VALUES ('4444444', 'Rocco', 'São Paulo');
INSERT INTO EDITORA VALUES ('5555555', 'FTD', 'Porto Alegre');
INSERT INTO EDITORA VALUES ('6666666', 'Editora UFPR', 'Curitiba');
INSERT INTO EDITORA VALUES ('7777777', 'Saraiva', 'São Paulo');

-- AUTOR
INSERT INTO AUTOR (nome, nacionalidade) VALUES ('João Silva', 'Brasil');
INSERT INTO AUTOR (nome, nacionalidade) VALUES ('Maria Souza', 'Brasil');
INSERT INTO AUTOR (nome, nacionalidade) VALUES ('Anne Rice', 'EUA');
INSERT INTO AUTOR (nome, nacionalidade) VALUES ('Stephen King', 'EUA');
INSERT INTO AUTOR (nome, nacionalidade) VALUES ('J. K. Rowling', 'Reino Unido');
INSERT INTO AUTOR (nome, nacionalidade) VALUES ('Machado de Assis', 'Brasil');
INSERT INTO AUTOR (nome, nacionalidade) VALUES ('George Orwell', 'Reino Unido');

-- BIBLIOTECARIO
INSERT INTO BIBLIOTECARIO (nome) VALUES ('Carlos Lima');
INSERT INTO BIBLIOTECARIO (nome) VALUES ('Bruna Alves');
INSERT INTO BIBLIOTECARIO (nome) VALUES ('Marcos Porto');
INSERT INTO BIBLIOTECARIO (nome) VALUES ('Ana Júlia');
INSERT INTO BIBLIOTECARIO (nome) VALUES ('Fábio Reis');
INSERT INTO BIBLIOTECARIO (nome) VALUES ('Joana Prado');
INSERT INTO BIBLIOTECARIO (nome) VALUES ('Thiago Santos');

-- CLIENTE
INSERT INTO CLIENTE VALUES ('111', 'Pedro Henrique', '4499990000');
INSERT INTO CLIENTE VALUES ('222', 'Amanda Silva', '4498887777');
INSERT INTO CLIENTE VALUES ('333', 'Juliana Souza', '4497776666');
INSERT INTO CLIENTE VALUES ('444', 'Rafael Lima', '4496665555');
INSERT INTO CLIENTE VALUES ('555', 'Larissa Melo', '4495554444');
INSERT INTO CLIENTE VALUES ('666', 'Lucas Rocha', '4494443333');
INSERT INTO CLIENTE VALUES ('777', 'Eduarda Faria', '4493332222');

-- ESTANTE
INSERT INTO ESTANTE (altura, largura, cod_categoria) VALUES (180, 80, 1);
INSERT INTO ESTANTE (altura, largura, cod_categoria) VALUES (200, 90, 2);
INSERT INTO ESTANTE (altura, largura, cod_categoria) VALUES (190, 85, 3);
INSERT INTO ESTANTE (altura, largura, cod_categoria) VALUES (175, 70, 4);
INSERT INTO ESTANTE (altura, largura, cod_categoria) VALUES (210, 95, 5);
INSERT INTO ESTANTE (altura, largura, cod_categoria) VALUES (160, 60, 6);
INSERT INTO ESTANTE (altura, largura, cod_categoria) VALUES (195, 88, 7);

-- LIVRO
INSERT INTO LIVRO VALUES ('ISBN001', 'Banco de Dados 1', 1, '1111111');
INSERT INTO LIVRO VALUES ('ISBN002', 'A Culpa é das Estrelas', 2, '2222222');
INSERT INTO LIVRO VALUES ('ISBN003', 'IT - A Coisa', 3, '3333333');
INSERT INTO LIVRO VALUES ('ISBN004', 'Dom Casmurro', 5, '4444444');
INSERT INTO LIVRO VALUES ('ISBN005', '1984', 7, '7777777');
INSERT INTO LIVRO VALUES ('ISBN006', 'Harry Potter', 7, '4444444');
INSERT INTO LIVRO VALUES ('ISBN007', 'O Iluminado', 3, '3333333');

-- LIVRO_AUTOR
INSERT INTO LIVRO_AUTOR VALUES ('ISBN001', 1);
INSERT INTO LIVRO_AUTOR VALUES ('ISBN002', 2);
INSERT INTO LIVRO_AUTOR VALUES ('ISBN003', 4);
INSERT INTO LIVRO_AUTOR VALUES ('ISBN004', 6);
INSERT INTO LIVRO_AUTOR VALUES ('ISBN005', 7);
INSERT INTO LIVRO_AUTOR VALUES ('ISBN006', 5);
INSERT INTO LIVRO_AUTOR VALUES ('ISBN007', 4);

-- EXEMPLAR
INSERT INTO EXEMPLAR (nro_edicao, nro_paginas, isbn_livro) VALUES (1, 350, 'ISBN001');
INSERT INTO EXEMPLAR (nro_edicao, nro_paginas, isbn_livro) VALUES (1, 280, 'ISBN002');
INSERT INTO EXEMPLAR (nro_edicao, nro_paginas, isbn_livro) VALUES (1, 600, 'ISBN003');
INSERT INTO EXEMPLAR (nro_edicao, nro_paginas, isbn_livro) VALUES (2, 200, 'ISBN004');
INSERT INTO EXEMPLAR (nro_edicao, nro_paginas, isbn_livro) VALUES (1, 320, 'ISBN005');
INSERT INTO EXEMPLAR (nro_edicao, nro_paginas, isbn_livro) VALUES (3, 400, 'ISBN006');
INSERT INTO EXEMPLAR (nro_edicao, nro_paginas, isbn_livro) VALUES (1, 450, 'ISBN007');

-- EMPRESTIMO
INSERT INTO EMPRESTIMO (data_devolucao, mat_bibliotecario, cpf_cliente, cod_exemplar)
VALUES ('2024-10-12', 1, '111', 1);
INSERT INTO EMPRESTIMO VALUES (DEFAULT, '2024-09-10', 2, '222', 2);
INSERT INTO EMPRESTIMO VALUES (DEFAULT, '2024-09-20', 3, '333', 3);
INSERT INTO EMPRESTIMO VALUES (DEFAULT, '2024-08-15', 4, '444', 4);
INSERT INTO EMPRESTIMO VALUES (DEFAULT, '2024-11-01', 5, '555', 5);
INSERT INTO EMPRESTIMO VALUES (DEFAULT, '2024-07-29', 6, '666', 6);
INSERT INTO EMPRESTIMO VALUES (DEFAULT, '2024-06-18', 7, '777', 7);
