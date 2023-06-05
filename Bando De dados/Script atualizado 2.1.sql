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

create table tbcadastro(
idCadastro int primary key auto_increment,
nome varchar(45),
email varchar(45),
senha char(9),
constraint fkformulario foreign key (fkformulario)
references tbformulario (idformulario)
);
select * from tbformulario;

select * from tbusuario;

select * from tbusuario join tbformulario on fkformulario;
truncate table tbusuario;
