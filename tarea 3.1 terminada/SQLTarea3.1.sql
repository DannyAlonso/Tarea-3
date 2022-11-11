Create Database Hospital1

use Hospital1

	create table Paciente
	(
	id int identity (1,1),
	nombre varchar (50),
	edad int, 
	sexo int,
	calle varchar (100),
	numeroCalle int,
	ciudad varchar(100),
	telefono int,
	seguro int
	)


	Alter table Paciente 
add Paciente int    /* es para crear otra columna */
	
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

insert into Paciente (nombre, edad, sexo, calle, numeroCalle, ciudad, telefono, seguro) values (@nombre,@edad,@sexo,@calle,@numeroCalle,@ciudad,@telefono,@seguro)

insert into Paciente (nombre, edad, sexo, calle, numeroCalle, ciudad, telefono, seguro) values ('Danny Castro',24,1,'Los Alpes',32,'Coronado',333333333,2)
insert into Paciente (nombre, telefono,sexo) values ('Natalia Solano',22222222,2) 

/*consultar*/

select * from Paciente where nombre = @nombre


select * from seguro
select * from Paciente where nombre = 'Danny Castro'
select nombre, Descripcion from sexo
select nombre, Descripcion from seguro


delete Paciente where nombre = @nombre