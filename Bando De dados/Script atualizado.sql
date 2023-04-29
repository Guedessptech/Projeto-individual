 create database projeto;
use projeto;
create  table tbformulario (
idformulario int  primary key auto_increment,
nomePL varchar ( 45 ),
equipePl varchar ( 45 )
);


insert into tbformulario values
( null , ' Hamilton ' , ' Mercedes ' ),
( null , ' Verstappen ' , ' Red Bull ' ),
( null, ' Leclerc ' , ' Ferrari ' );

create table tbusuario(
idusuario int primary key auto_increment,
nome varchar(45),
email varchar(45),
senha varchar(45),
fkformulario int,
constraint fkformulario foreign key (fkformulario)
references tbformulario (idformulario));

insert into tbusuario value
(null,'Gabriel','guedesbiel10@gmail.com','xgames12',1),
(null,'kat','kat10@gmail.com','xgames13',2),
(null,'Carlos','carlos10@gmail.com','xgames14',3);
select * from tbformulario;

select * from tbusuario;

select * from tbusuario join tbformulario on fkformulario;
truncate table tbusuario;
