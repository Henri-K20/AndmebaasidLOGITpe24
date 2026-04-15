select * from opilane
alter table opilane add telefon varchar(1)

alter table opilane drop column telefon

alter table opilane alter column telefon varchar(13);

-- näitab tabeli struktuuri ja andmeid
sp_help opilane


sp_help ryhm
drop table ryhm
select * from ryhm
create table ryhm(
ryhmID int not null,
ryhmNimi varchar(10)
)

alter table ryhm add constraint ryhmpk primary key (ryhmID)

alter table ryhm add constraint un_ryhm unique (ryhmNimi)

insert into ryhm (ryhmID, ryhmNimi)
values (1,'LOGITpe24'), (2,'TITpe24')

alter table opilane add ryhmID int foreign key references ryhm(ryhmID)

insert into opilane
values('Kevin','Allik','2003-10-23',0,'Tartu, Eesti',4.5,'+35555',1)
