 Create Table Propietario 
(
	IdPropietario  int Not Null auto_increment,
	Nombre Varchar(50) NOT null,
	Apellido Varchar(50)  NOT null,
	telefono numeric (10)  NOT null,
	IdTipoDocumento int not null,
	Primary Key(IdPropietario),
	foreign key (IdTipoDocumento) references  TipoDocumento(IdTipoDocumento)
 );