create database SchoolManager;
use SchoolManager;

create table CadastroAluno(
matricula int auto_increment primary key,
nome varchar (30) not null,
email varchar (22)not null,
sexo varchar (9)not null,
nomeCompletoDoResponsavel varchar (11)not null, 
telefone varchar (22)not null,
cpf varchar (20)not null,
turnoAula varchar (30)not null,
estado varchar (14)not null,
municipio varchar (18)not null,
bairro varchar (18)not null,
rua varchar(26)not null

);
select * from CadastroAluno; 


create table CadastroFuncionario(
idFunc INT primary key auto_increment,
nomeFunc varchar (55),
cpfFunc varchar(16),
setor varchar (50),
email varchar (50),
telefoneFunc varchar(20)
);
select * from CadastroFuncionario;


create table cadasto_pagamento_mensalidade(
idPagamento int primary key auto_increment,
matricula int,
nome varchar (30) not null,
turnoAula varchar (30)not null,
telefone varchar (22)not null,
valorDaMensalidade varchar(15),
mesDePagamento varchar (15),
formaDePagamento varchar (15),
foreign key (matricula) references CadastroAluno (matricula)
);
select *from cadastro_pagamento_mensalidade;

create table BoletimAluno (
idBoletim int auto_increment,
matricula int,
nome varchar (30),
serie varchar (12),
trimestre varchar (12),
disciplina varchar (12),
nota01 float,
nota02 float,
nota03 float,
media float,
primary key (idBoletim),
foreign key(matricula) references CadastroAluno(matricula)
);
select * from BoletimAluno;


create table pautaDaTurma(
nomeFunc varchar (55),
dataPag varchar (12),
turmaP varchar (15),
nome varchar (30) not null,
presente boolean,
ausente boolean,
primary key (nomeFunc),
foreign key (nomeFunc) references CadastroFuncionario (nomeFunc)
);

create table registroOcorrencia(
matricula int,
nome varchar (30) not null,
turmaO varchar (15) not null,
gravidadeOcorrencia varchar (15) not null,
descricao varchar (200),
primary key (matricula),
foreign key (matricula) references CadastroAluno (matricula)
);

create table mensagemAutomatizada(
matricula int,
nome varchar (30) not null,
turmaC varchar (15) not null,
assunto varchar (200) not null
);

