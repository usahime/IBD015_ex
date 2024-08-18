-- criar bd_aula04

--tabelas para o exercicios
create domain chk_categoria text check (value='DRAMA' or value='COMEDIA');
create domain chk_status text check (value='DISPONIVEL' or value='ALUGADO');
create table tbl_cliente (codigo_cliente integer PRIMARY KEY, nome text not null, cidade text, endereco text);
create table tbl_titulo (codigo_titulo integer primary key, titulo text not null, descricao text, categoria chk_categoria);
create table tbl_livros (cod_livro integer PRIMARY KEY, codigo_titulo integer REFERENCES tbl_titulo(codigo_titulo), status chk_status DEFAULT 'DISPONIVEL');
create table tbl_emprestimo (numero_emprestimo integer PRIMARY KEY, codigo_cliente integer REFERENCES tbl_cliente(codigo_cliente), codigo_livro integer REFERENCES tbl_livros(cod_livro));
-- Inserir dados na tabela tbl_cliente


-- Inserir dados na tabela tbl_titulo


-- Inserir dados na tabela tbl_livros


-- Inserir dados na tabela tbl_emprestimo


--selecionar todos os clientes


--Selecionar os clientes que moram em São Paulo


--Selecionar os clientes onde o código é maior que 3


--Selecionar todos os títulos


--crie uma tabela chamada tbl_cliente2 com uma coluna integer chamada código

--Copie todos dos códigos da tbl_cliente para essa nova tabela usando o SQL Insert.


--Atualize todos os livros alugados para disponivel


--Delete todos as linhas da tabela tbl_cliente2 onde o código for maior que 3



