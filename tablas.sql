create table alumnos(
	alum_ID int identity (1,1) not null primary key,
	alum_nombre varchar (255) not null,
	alum_apellido varchar (255) not null,
	alum_edad int not null,
	alum_ciud_ID int not null
	)

create table ciudad(
	ciud_ID int identity(1,1) not null primary key,
	ciud_nombre varchar (255) not null,
	ciud_CodP int not null
	)

create table provincia(
	prov_ID int identity (1,1) not null primary key,
	prov_nombre varchar(255) not null
	)

create table pais(
	pais_ID int identity(1,1) not null primary key,	
	pais_nombre varchar(255) not null
	)

ACTIVIDAD TALLER 1
create table cliente(
	ID_cliente int identity (1,1) not null primary key,
	cliente_nombre varchar(255) not null,
	cliente_direccion varchar (255) not null,
	cliente_telefono int not null
	)
create table facturas(
	ID_factura int identity (1,1) not null primary key,
	fecha varchar (255) not null,
	ID_cliente_factura int not null
	)
	
create table ventas(
	ID_ventas int identity (1,1) not null primary key,
	ID_factura_venta int not null,
	ID_producto_venta varchar (255) not null,
	cantidad int not null
	)

create table productos(
	ID_producto int identity (1,1) not null primary key,
	ID_proveedor int null,
	detalles varchar (255) not null
	)

ACTIVIDAD TALLER 2
create table alumnos(
	alum_N_de_alumno int identity(1,1) not null primary key,
	alum_nombre varchar (255) not null,
	alum_apellido varchar (255) not null,
	alum_direccion varchar (255) not null,
	alum_ciudad varchar (255) not null,
	alum_cod_postal varchar (255) not null,
	alum_provincia varchar (255) not null,
	alum_telefono varchar (255) not null,
	alum_edad int not null,
	alum_DNI varchar (255) not null
	)
create table profesor(
	prof_cod_de_profesor int identity (1,1) not null primary key,
	prof_nombre varchar (255) not null,
	prof_apellido varchar (255) not null,
	prof_direccion varchar (255) not null,
	prof_ciudad varchar (255) not null,
	prof_cod_postal varchar (255) not null,
	prof_provincia varchar (255) not null,
	prof_telefono varchar (255) not null,
	prof_edad int not null,
	prof_DNI varchar (255) not null
)
create table cursos(
   curs_cod_de_curso int identity (1,1) not null primary key,
   curs_curso varchar (255) not null, 
   curs_cod_del_profesor int not null,
   foreign key (curs_cod_del_profesor) references profesor (prof_cod_de_profesor),
   curs_fecha_de_inicio varchar(255) not null,
   curs_fecha_de_fin varchar(255) not null,
   curs_hora_inicio varchar(255) not null,
   curs_hora_fin varchar(255) not null,
   curs_incidencias varchar (255) not null
)


create table evaluaciones(
   eval_observaciones varchar (255) not null primary key,
   eval_cod_de_curso int not null,
   foreign key (eval_cod_de_curso) references cursos (curs_cod_de_curso),
   eval_N_de_alumno int not null,
   foreign key (eval_N_de_alumno) references alumnos (alum_N_de_alumno),
   eval_nota_final varchar (255)
   )
