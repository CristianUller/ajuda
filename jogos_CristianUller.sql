create database NekoCafe ;
use NekoCafe;
 create table desenvolvedor(
 id int primary key unique not null auto_increment ,
 nome varchar(45) not null
 );
create table jogo(
 id int primary key unique not null auto_increment ,
 nome varchar(45) not null,
 genero varchar(45) not null,
 valor decimal(13,2) not null,
 tamanho varchar(30) not null,
 dev int not null,
 constraint dev foreign key (dev) references desenvolvedor(id)
 );

 create table cliente(
 id int primary key unique not null auto_increment ,
 nome varchar(45) not null,
 sobrenome varchar(45) not null,
 endereco varchar(45) ,
 email varchar(45),
 cpf varchar(45) not null unique,
 telefone decimal(13,2)
 );
 create table aluguel(
 id int primary key unique not null auto_increment ,
 dt_aluguel date,
 dt_devolucao date,
 dt_devolvido date,
 vlr_multa decimal(13,2),
 jogo int  not null,
 cliente int  not null,
 constraint jogo foreign key (jogo) references jogo(id),
 constraint cliente foreign key (cliente) references cliente(id)
 );
insert into desenvolvedor (nome) values ('BlueTwelve_Studio');
insert into jogo (nome,genero,valor,tamanho,dev) values ('Stray','aventura',200,2800,1);
insert into cliente (nome,sobrenome,email,cpf) values ('Cristian','Uller','cristianuller',12345678900);
insert into aluguel ( dt_aluguel,dt_devolucao,dt_devolvido,vlr_multa,cliente,jogo) values ('2024-02-10','2024-03-10','2024-03-10',0,1,6);

select * from cliente
