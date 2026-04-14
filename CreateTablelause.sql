create database pais;
use pais

-- tabeli loomine
CREATE TABLE opilane(
opilaneId int Primary Key identity (1, 1),
eesnimi varchar(25),
perekonnanimi varchar(30) not null,
synniaeg date,
pohitoetus bit,
aadress TEXT,
keskminehinne decimal(2,1)
)

SELECT * FROM opilane

-- andmete lisamine
insert into opilane(perekonnanimi, eesnimi, synniaeg)
values ('Punane', 'Sali', '2001-9-11'),
('Kollane', 'Komm', '1968-4-1')

-- uuendame tabeliandmeid
update opilane set aadress='Tallinn, Eesti'
update opilane set pohitoetus=1
update opilane set keskminehinne=4.5

-- ilma (perekonnanimi, eesnimi, synniaeg)
insert into opilane
values ('nimi', 'perenimi', '2003-10-23', 0, 'Tartu, Eesti', 3.5)
