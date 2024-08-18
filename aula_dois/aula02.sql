-- Criar banco de dados bd_sistema_bancario

create database bd_sistema_bancario;

-- Criar 5 tabelas quaisquer

create table cliente (
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

-- Criar tabelas conforme MER (Sistema Bancario):

create table cliente (
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

-- Deletar as 5 tabelas criadas aleatoriamente

drop table cliente, conta, emprestimo, agencia, pet;

-- alterar as tabelas conforme o MER atualizado

alter table tbl_cliente add column idade INT, add column cpf INT;

alter table conta rename to tbl_conta;

alter table tbl_conta drop column nome_conta;

alter table tbl_conta add column nome_agencia TEXT;

alter table emprestimo rename to tbl_emprestimo;

alter table agencia rename to tbl_agencia;

alter table tbl_agencia drop column cidade_agencia;

alter table tbl_agencia add column endereco_agencia TEXT;

-- Criar um esquema com o seu nome

create schema kainerogers;
