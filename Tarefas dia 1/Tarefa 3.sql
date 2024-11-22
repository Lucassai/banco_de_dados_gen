create database if not exists  db_escola;

use db_escola;

create table if not exists tb_alunos(
id bigint primary key auto_increment,
nome varchar(255) not null,
materia varchar(255) not null,
nota float(6,2),
conceito varchar(2),
bolsista boolean
);

insert into tb_alunos(nome,materia,nota,conceito,bolsista)
values("Bruna","Inglês",8.5,"MB",true),
("Viktor","Inglês",6.5,"B",false),
("Oliver","Inglês",10,"EX",false),
("Clara","Inglês",9.5,"EX",true),
("Isabela","Inglês",10,"EX",true),
("Enzo","Inglês",5,"R",false),
("Bruno","Inglês",4.5,"I",true),
("Souza","Inglês",9.5,"EX",true),
("Couto","Inglês",7.5,"B",true);

select * from tb_alunos where nota > 7.0;

select * from tb_alunos where nota < 7.0;

update tb_alunos set nota = 6.5 where id = 6 ; 
update tb_alunos set conceito = "B" where id = 6;

select * from tb_alunos;