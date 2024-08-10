1- create database bd_sistema_bancario;

2- embutido no ex 3.

3- create table cliente (
    nome_cliente TEXT,
    cidade_cliente TEXT,
    endereco_cliente TEXT
);

create table conta (
    numero_conta INT,
    nome_conta TEXT,
    saldo REAL
);

create table emprestimo (
    numero_emprestimo INT,
    nome_agencia TEXT,
    valor REAL
);

create table agencia (
    nome_agencia TEXT,
    cidade_agencia TEXT,
    depositos REAL
);

create table pet (
    nome_bnnuy TEXT,
    peso_bnnuy REAL
);

4- drop table cliente, conta, emprestimo, agencia, pet;

5- 	alter table cliente rename to tbl_cliente;

	alter table tbl_cliente add column idade INT, add column cpf INT;

	alter table conta rename to tbl_conta;

	alter table tbl_conta drop column nome_conta;

	alter table tbl_conta add column nome_agencia TEXT;

	alter table emprestimo rename to tbl_emprestimo;

	alter table agencia rename to tbl_agencia;

	alter table tbl_agencia drop column cidade_agencia;

	alter table tbl_agencia add column endereco_agencia TEXT;

6- create schema kainerogers;