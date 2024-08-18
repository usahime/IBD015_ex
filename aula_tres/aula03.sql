-- criar banco de dados bd_aula03

create database bd_aula03;


-- criar tabelas do MER

create table tbl_cliente(
    codigo_cliente integer primary key,
    nome text not null,
    cidade text,
    endereco text
);

create table tbl_titulo(
    codigo_titulo integer primary key,
    titulo text not null,
    descricao text,
    categoria text
);

create table tbl_emprestimo(
    numero_emprestimo integer primary key,
    codigo_cliente integer,
    codigo_livro integer
);

create table tbl_livros(
    cod_livro integer primary key,
    codigo_titulo integer,
    status text
);


-- criar domains

create domain chk_status text check(
    value in ('DISPONIVEL', 'ALUGADO')
);

create domain chk_categoria text check(
    value in ('LITERATURA', 'COMEDIA')
);


-- adicionar domain a tabela

alter table tbl_titulo alter column categoria type chk_categoria;

alter table tbl_livros alter column status type chk_status;

alter table tbl_livros alter column status set default 'DISPONIVEL';


-- adicionar chaves estrangeiras

alter table tbl_livros add constraint fk_cod_titulo foreign key (codigo_titulo) references tbl_titulo(codigo_titulo);

alter table tbl_emprestimo add constraint fk_codigo_cliente foreign key (codigo_cliente) references tbl_cliente(codigo_cliente);

alter table tbl_emprestimo add constraint fk_codigo_livro foreign key (codigo_livro) references tbl_livros(cod_livro);

