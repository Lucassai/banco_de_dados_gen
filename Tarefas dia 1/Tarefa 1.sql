create database db_rh;

use db_rh;


create table if not exists tb_colaboradores (
	
	id bigint primary key auto_increment,
	nome varchar(255) not null,
	cargo varchar(255) not null,
	salario float(6,2) not null,
	auxilio float not null,
	ativo boolean
	
);

insert into tb_colaboradores (nome,cargo,salario,auxilio,ativo)
values ("João","Senior",4999.99,999.99,true), 
		("Daniel", "Telecomunicador", 7999.99, 199.00,true),
		("Lucas", "Junior", 2999.99, 999.99 , true),
		("Emanuel", "Gerente", 4999.99, 499.99, true),
		("Leonardo", "CEO", 14999.99, 0.0 , false);

insert into tb_colaboradores(nome,cargo,salario,auxilio,ativo)
values ("Shakira", "Cantora", 200000,20000,true);

select * from tb_colaboradores where salario < 2000;

select * from tb_colaboradores where salario > 2000;

update tb_colaboradores set salario = 1000 where id = 6; 