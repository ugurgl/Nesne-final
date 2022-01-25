create database yemek_tarifi;
use yemek_tarifi;

create table yemek(
yemek_id int primary key identity(1,1),
yemek_ad varchar(100),
malzemeler varchar(1000),
tarif varchar(1000),
resim varchar(1000)
);
select *from yemek;

create table kisi(
kisi_id int primary key identity(1,1),
ad varchar(20),
soyad varchar(30)
);
select * from kisi;

create table masa(
masa_id int primary key identity(1,1),
masa_ad varchar(20)
);
select * from masa;

create table randevu(
rnd_id int primary key identity(1,1),
masa_id int,
kisi_id int,
tarih varchar(20)
);
select * from randevu;

create table siparis(
sprs_id int primary key identity(1,1),
rnd_id int,
yemek_id int,
aada varchar(30)
);
select * from siparis;

insert into randevu(masa_id,kisi_id,tarih)
values
(1,1,'17.00');
select * from randevu;
