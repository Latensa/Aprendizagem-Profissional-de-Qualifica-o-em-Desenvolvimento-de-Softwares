/*Implementação de banco de dados relacional usando MySQL*/
/*01. Criando Arquivo/Banco de Dados*/
create database empresa;
/*02. Acessando arquivo*/
use empresa;

/*criando tabela*/
/*03. Criando a tabela cliente*/
create table cliente(
	codigo varchar(100),
    nome varchar(100),
    endereco varchar(100),
    cpf varchar(100),
    telefone varchar(100)
);

create table compra(
	codigo varchar(100),
    quantidade_produtos varchar(100)
);

create table funcionario(
	codigo varchar(100),
    nome varchar(100),
    cpf varchar(100),
    telefone varchar(100)
);

create table departamento(
	codigo varchar(100),
    descrição varchar(100)
);

create table fornecedor(
	codigo varchar(100),
	nome varchar(100),
	telefone varchar(100)
);

create table produto(
	codigo varchar(100),
	descrição varchar(100), 
	valor varchar(100)
);
        
        
    
