-- HARJUTUS ISE TEHTUD
create table opetaja(
opetajaID int Primary Key identity(1,1),
nimi varchar(25),
ruum varchar(10)
)

create table opetamine(
opetamineID int Primary Key identity(1,1),
opetajaID int,
Foreign Key(opetajaID) references opetaja(opetajaID),
oppeaine varchar(15),
maht int
)

-- testimiseks
select * from opetaja
select * from opetamine
insert into opetaja (nimi, ruum)
values('toomas', 214)

insert into opetamine (opetajaID, oppeaine, maht)
values(22, 'ajalugu', 60)
