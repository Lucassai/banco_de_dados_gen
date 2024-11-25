create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias (
	categoriasId bigint auto_increment primary key,
	marca varchar(50),
	tipo varchar(50)
);

create table tb_produtos (
	produtosId bigint auto_increment primary key,
	preco float (6,2),
	nome varchar(50),
	tarja varchar(50),
	prescricao boolean,
	categoriasId bigint,
	foreign key (categoriasId) references tb_categorias(categoriasId)
);

insert into tb_categorias(marca, tipo)
values ('Dove','Cosméticos'), --1
('Dove','Higiene'),--2
('Colgate','Higiene'),--3
('Generico', 'Medicamento'),--4
('Huggies', 'Cosméticos');--5



insert into tb_produtos (preco, nome, tarja, prescricao,categoriasId)
values  
    (15.99, 'Dipirona', 'Sem tarja', false, 4),
    (89.90, 'Omeprazol', 'Vermelha', true, 4), 
    (25.50, 'Shampoo Anticaspa', 'Sem tarja', false, 2), 
    (120.00, 'Rivotril', 'Preta', true ,4), 
    (45.00, 'Creme Hidratante', 'Sem tarja', false, 5), 
    (8.75, 'Sabonete Líquido', 'Sem tarja', false, 2), 
    (230.00, 'Perfume Importado', 'Sem tarja', false, 5), 
    (18.75, 'Escova Dental', 'Sem tarja', false, 3); 

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco >= 5 and preco <= 60; 

select * from tb_produtos where nome like '%c%';  -- select buscando produtos com a letra 'c' no nome
   
select 
    p.preco, 
    p.nome, 
    p.tarja, 
    p.prescricao, 
    p.categoriasId, 
    c.marca, 
    c.tipo
from 
    tb_produtos p
inner join
    tb_categorias c 
on 
    p.categoriasId = c.categoriasId; -- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
    
   
   select 
    p.preco, 
    p.nome, 
    p.tarja, 
    p.prescricao, 
    p.categoriasId, 
    c.marca, 
    c.tipo
from 
    tb_produtos p
inner join
    tb_categorias c 
on 
    p.categoriasId = c.categoriasId
where 
	c.tipo = "Cosméticos" -- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria cosméticos).

