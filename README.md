# AndmebaasidLOGITpe24
SQL kood ja konspektid.

   ## Sisukord
- [Andmebaasihaldussüsteemid](#andmebaasihaldussüsteemid)
- [Mõisted](#mõisted)
- [Andmetüübid](#andmetüübid)
- [Piirangud](#piirangud)
- [Seosed](#seosed)










## Andmebaasihaldussüsteemid:
1. SQL Server Management Studio (SQL serveri haldamiseks)
   <img width="471" height="505" alt="{4376C754-7F60-4484-9446-CA1C4675A193}" src="https://github.com/user-attachments/assets/2a6ebf7c-93a1-4e47-af53-536ebd9b3719" />

3. XAMPP - phpmyadmin (mariaDB andmebaas)

## Mõisted:
- Andmebaas - Keskne andmete kogum
- Tabel - olem (entity). Struktureeritud konteiner andmebaasis, mis organiseerib andmed veerudeks ja ridadeks.
- Veerg - väli (field)
- Rida - kirje (record)
- Primaarne võti - Primary Key (PK) - (id mis eristab igat kirjet)
- Välisvõti (võõrvõti) - Foreign Key (FK) - (Loob seose teise tabeli primaarvõtmega)
- SQL (Structured Query Language) - struktureeritud päringukeel
- DDL (Data Definition Language) - andme struktuuri loomiskeel - create, alter, drop
- DML (Data Manipulation Language) - andmete modifitseerimiskeel - insert, update, delete



## Andmetüübid
 - INT, float, decimal(nt 6,2)
 - varchar(50), char(6)
 - boolean, bool, bit
 - date, time, datetime


## Piirangud
```
1. Primary Key
2. Foreign Key
3. Unique
4. Not Null
5. Check
```

## Seosed
- üks ühele (nt abielu mehe ja naise vahel)
- üks mitmele (nt õpilane käib mitmes erinevas õppeaines)
   <img width="539" height="262" alt="{3D0D0400-818B-4D0C-90FC-23E43F8F9A3D}" src="https://github.com/user-attachments/assets/0216113a-ae88-4313-ba05-1195f04e0df2" />

- mitu mitmele (nt õpetajal mitu õpilast/õpilasel mitu õpetajat)

## Stored procedure
   Salvestatud protseduurid - sama mis on funktsioonid programmeerimises
saab automaatselt teha (insert, select, update, delete)

### Lisamisprotseduur
```
create procedure lisaKategooria
@nimi varchar(15) as
begin
	insert into categories
	values (@nimi)
	select * from categories
end

exec lisaKategooria 'test'
```

### Kustutamisprotseduur
```
create procedure kustutaidJargi
@id int as
begin
	select * from categories
	delete from categories where category_id=@id
	select * from categories
end

exec kustutaidJargi 1
```

### Otsinguprotseduur
```
create procedure otsi
@taht char(1) as
begin
	select category_name from categories
	where category_name like @taht + '%'
end

exec otsi a
```
### Xampp protseduuri lisamine
<img width="766" height="226" alt="{B982CB54-3C0C-4F15-A5CB-AAB645116442}" src="https://github.com/user-attachments/assets/528ff186-f4ca-44a1-adec-a6f9998b85a4" />




