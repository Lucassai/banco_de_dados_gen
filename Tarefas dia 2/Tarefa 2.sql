create database if not exists db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
	categoriaId bigint auto_increment primary key,
	tipo varchar(64),
	massa varchar (64)
)

create table tb_pizzas(
	pizzaId bigint auto_increment primary key,
	sabor varchar(255),
	preço float (6,2),
	molhos varchar (255),
	queijo varchar (255),
	borda varchar (255),
	categoriaId bigint,
	foreign key (categoriaId) references tb_categoria(categoriaId)
);

insert into tb_categoria(tipo,massa)
values ("doce", "fina"),
("doce","grossa"),
("salgada","fina"),
("salgada","grossa"),
("salgada","gourmet"),
("doce","gourmet");

insert into tb_pizzas(sabor,preço,molhos,queijo,borda,categoriaId)
values ('Calabresa', 30.50, 'Tomate', 'Mussarela', 'Tradicional',3),
('Frango com Catupiry', 35.90, 'Tomate', 'Catupiry', 'Recheada de Catupiry',4),
('Quatro Queijos', 40.00, 'Branco', 'Parmesão, Gorgonzola, Provolone, Mussarela', 'Tradicional',5),
('Marguerita', 28.00, 'Tomate', 'Mussarela de Búfala', 'Integral',3),
('Pepperoni', 38.00, 'Barbecue', 'Cheddar', 'Recheada de Cheddar',5),
('Vegetariana', 32.00, 'Pesto', 'Vegano', 'Tradicional',3),
('Portuguesa', 36.50, 'Tomate', 'Mussarela', 'Tradicional',4),
('Chocolate', 25.00, 'Chocolate', 'Branco', 'Recheada de Chocolate',1);

insert into tb_pizzas(sabor,preço,molhos,queijo,borda)
values('Especial', 54.99, 'Pesto', 'Gorgonzola' , 'Recheada de Chocolate');


select * from tb_pizzas where preço>45; -- select preço maior que 45

select * from tb_pizzas where preço>=50 and preço<=100; -- select preço entre 50 e 100 

select * from tb_pizzas where sabor like '%m%'; -- pizzas com a letra M no atributo 'sabor'

select
	p.sabor,
	p.preço,
	p.molhos,
	p.queijo,
	p.borda,
	c.tipo,
	c.massa
from 
	tb_pizzas p
inner join 
	tb_categoria c
on
	p.categoriaId = c.categoriaId; -- inner join com os dados da tabele td_pizzas e td_ categoria

select
	p.sabor,
	p.preço,
	p.molhos,
	p.queijo,
	p.borda,
	c.tipo,
	c.massa
from 
	tb_pizzas p
inner join 
	tb_categoria c
on
	p.categoriaId = c.categoriaId
where
	c.tipo = "doce";  -- exemplo todas as pizzas doce
	

