create database if not exists db_ecommerce;

use db_ecommerce;

create table if not exists tb_produtos(
	id bigint primary key auto_increment,
	nome varchar(255) not null,
	tamanho varchar(2),
	marca varchar(255),
	cor varchar(255),
	preco float(6,2)
);

insert into tb_produtos(nome,tamanho,marca,cor,preco) 

values("camisa","GG","nike","preto",199.99),
("camisa","G","nike","preto",299.99),
("camisa","M","nike","preto",199.99),
("calça","GG","Adidas","branco",399.99),
("calça","G","Adidas","branco",399.99),
("calça","M","Adidas","branco",299.99),
("boné","GG","Casa","amarelo",59.99),
("casaco","GG","Black-House","preto",399.99);

select * from tb_produtos where preco > 500;

select * from tb_produtos where preco < 500;

update tb_produtos set preco = 549.99 where id = 8 ;


