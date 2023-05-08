
CREATE TABLE FECHA (
Key_Fecha int, 
Fecha DATE,
Dia int not null,
Mes int not null,
Año int not null,
Estaciondelaño varchar(10)

constraint PK_FECHA primary key (Key_Fecha)
)
DROP TABLE FECHA

CREATE TABLE HORA (
Key_hora int,
Hora TIME,
Horas int not null, 
Minutos int not null,
Segundos int not null,
Periodo varchar(50),
HoraIngreso char(1),
Horacierreagencia char(1),
Horaalmuerzo char(1),
Horasalida char(1),
Horalaborable char(1)

constraint PK_HORA primary key (Key_hora)
)
DROP TABLE HORA

CREATE TABLE AGENCIA (
Key_Agencia int,
Agencia_nombre varchar(255),
Agencia_tipo varchar(50),
Departamento varchar(50),
Municipio varchar(50),
Codigo_operador int

constraint PK_AGENCIA primary key (Key_Agencia)
)
DROP TABLE AGENCIA

CREATE TABLE PRODUCTO(
Key_Producto int,
Producto_descripcion varchar(255)

constraint PK_Producto primary key (Key_Producto)
)
DROP TABLE PRODUCTO


CREATE TABLE TABLAHECHOS(
Key_operacion int,
Key_Agencia int,
Key_Producto int,
Key_Fecha int,
Key_hora int,
ValorEfectivo decimal(10,2),
ValorCheque decimal(10,2),
ValorOtrosMedios decimal(10,2),
ValorTotal decimal(10,2)

constraint Key_operacion primary key (Key_operacion),
constraint FK_Agencias foreign key (Key_Agencia) references AGENCIA(Key_Agencia),
constraint FK_Producto foreign key (Key_Producto) references PRODUCTO(Key_Producto),
constraint FK_Fecha foreign key (Key_Fecha) references FECHA(Key_Fecha),
constraint FK_HORA foreign key (Key_hora) references HORA(Key_hora)

)
DROP TABLE TABLAHECHOS