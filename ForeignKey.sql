--teine tabel
create table opilaneTunnis(
opilaneTunnisId int Primary Key identity(1,1),
kuupaev date not null,
opilaneId int,
Foreign Key (opilaneId) References opilane(opilaneId), -- Primary ja Foreign key ühendamine
oppeaine varchar(25),
hinne int

)
SELECT * FROM opilane
SELECT * FROM opilaneTunnis

-- lisan andmed uute tabelisse
insert into opilaneTunnis
values('2026-04-14', 1, 'keemia', 4)

-- testtabel
create table testTabel(
id int primary key
);

-- tabeli kustutamine
drop table testTabel
drop database indexLoomine, exmplAbdulov

-- tabelirea kustutamine
delete from opilane where opilaneId=3
