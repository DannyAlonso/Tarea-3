Create Database Hospital

use Hospital

/*Eliminar tabla*/

drop table paciente

create table Paciente
(
nombre varchar (30),
edad int, 
sexo varchar (10),
domicilio varchar (50),
telefono int,
seguro int
)

Alter table Paciente 
add Paciente int 

create table seguro
(
nombre int identity (1,1),
Descripcion varchar (20)
)

create table sexo 
(
nombre int identity (1,1),
Descripcion varchar (20)
)
/*ingresar*/
insert into sexo values ('HOMBRE'),('MUJER')

insert into seguro values ('VERDADERO'),('FALSO')

insert into Paciente (nombre, edad, sexo, domicilio, telefono, seguro) values (@nombre,@edad,@sexo,@domocilio,@telefono,@seguro)

insert into Paciente (nombre, edad, sexo, domicilio, telefono, seguro) values ('Danny Castro',24,1,'Los Alpes,32,Coronado',333333333,2)
insert into Paciente (nombre, telefono,sexo) values ('Natalia Solano',22222222,2) 

/*consultar*/

select * from Paciente where nombre = @nombre


select * from seguro
select * from Paciente where nombre = 'Danny Castro'
select nombre, Descripcion from sexo
select nombre, Descripcion from seguro


