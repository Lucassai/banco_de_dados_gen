create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
idClasse bigint auto_increment primary key,
elemento varchar(255),
escola varchar(255)
);

create table tb_personagens(
idPersonagens bigint auto_increment primary key,
nome varchar(30),
ataque bigint,
defesa bigint,
aniversario date,
idClasse bigint,
FOREIGN KEY (idClasse) references tb_classe(idClasse)
);

insert into tb_classe(elemento,escola)
values("Fogo","Escola do dragão"),
("Agua", "Escola do oceano"),
("Terra", "Escola da montanha"),
("Ar", "Escola do tornado");

insert into tb_classe(elemento,escola)
values("Relâmpago","Escola da tempestade");

insert into tb_personagens(nome,ataque,defesa,aniversario,idClasse)
values("Lucas", "1000","4000","2024-03-08", 3),
("Rune", "2500","2500","2024-08-01", 4),
("Frix", "3000","2000","2024-03-08", 5),
("Luna", "4000","1000","2024-03-08", 1),
("Mont", "1000","4000","2024-03-08", 3),
("Lux", "4000","1000","2024-03-08", 1),
("Powder", "4500","500","2024-03-08", 5),
("Aqua", "2000","3000","2024-03-08", 1);

select * from tb_personagens where ataque>2000; -- select com o ataque maior que 2000

select * from tb_personagens where defesa>=1000 and defesa<=2000; -- select com o intervalo de defesa entre 1000 e 2000

select * from tb_personagens where nome like '%c%';  -- select buscando personagens com a letra 'c' no nome

select 
    p.nome, 
    p.ataque, 
    p.defesa, 
    p.aniversario, 
    p.idClasse, 
    c.elemento, 
    c.escola
from 
    tb_personagens p
inner join
    tb_classe c 
on 
    p.idClasse = c.idClasse; -- inner join unindo os dados da tabela tb_pernagens com os dados da tabela tb_classes

   
select
   p.nome,
   p.ataque,
   p.defesa,
   p.aniversario,
   p.aniversario,
   p.idClasse,
   c.elemento,
   c.escola
from
	tb_personagens p
inner join
	tb_classe c
on
	p.idClasse = c.idClasse
where 
	c.elemento = "Fogo"; -- inner join com classe especifica
	

select * from tb_classe;
select * from tb_personagens;
