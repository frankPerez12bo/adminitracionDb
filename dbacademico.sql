create database dbacademico;
use dbacademico;

create table tblAlumno(
	aludni varchar(8) PRIMARY KEY,
    alumnonombre varchar(30) not null,
    aluapelllido varchar(30) not null,
    aludireccion varchar(50) not null,
    alucelular  varchar(11) not null,
    aluemail varchar(50) not null,
    alufechanac date null,
    naccodigo int,
    barcodigo int,
    estcivilcodigo int
);

create table tblnacionalidad(
	naccodigo int primary key auto_increment,
    nacdescripcion varchar(20) not null
    
);

create table tblestadocivil(
	estcivilcodigo int primary key auto_increment,
    estcivildescripcion varchar(15) not null
);

create table tblbarrio(
	barcodigo int primary key auto_increment,
    bardescripcion varchar(30) not null,
    ciucodigo int not null
);

create table tblciudad(
	ciucodigo int primary key auto_increment,
    ciudescripcion varchar(30) not null,
    paiscodigo int not null 
);

create table tblpais(
	paiscodigo int primary key auto_increment,
    paisdescripcion varchar(30) not null
);

alter table tblAlumno
add foreign key (naccodigo) references tblnacionalidad(naccodigo);

alter table tblAlumno
add foreign key (estcivilcodigo) references tblestadocivil(estcivilcodigo);

alter table tblAlumno
add foreign key (barcodigo) references tblbarrio(barcodigo);

alter table tblAlumno
add foreign key (ciucodigo) references tblciudad(ciucodigo);

alter table tblAlumno
add foreign key (paiscodigo) references tblpais(paiscodigo);