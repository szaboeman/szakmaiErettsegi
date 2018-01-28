--1. feladat: hozzuk létre az adatbázist
create database forgalom default charset "utf8" collate "utf8_hungarian_ci";



--2. feladat: táblák létrehozása
create table kategoria (
	kat_kod int,
	kat_nev varchar(50),
	constraint pk_kategoria primary key (kat_kod)
);

create table aru (
	aru_kod int,
	kat_kod int,
	nev varchar(50),
	egyseg varchar(10),
	ar int,
	constraint pk_aru primary key (aru_kod),
	constraint fk_aru_kategoria foreign key (kat_kod) references kategoria(kat_kod)
);

create table eladas (
	aru_kod int,
	mennyiseg int,
	constraint pk_eladas primary key (aru_kod),
	constraint fk_eladas_aru foreign key (aru_kod) references aru (aru_kod)
);


--3. feladat: fájlok beolvasás (importálása)
--3. feladat: 
select nev, ar
from aru
where ar>1000

--4. feladat: 
select a.nev, a.egyseg, e.mennyiseg
from eladas e, aru a, kategoria k
where e.aru_kod=a.aru_kod and a.kat_kod=k.kat_kod and 
		k.kat_nev = "Üditőitalok"
		
--5. feladat:
select count(*)
from aru
where egyseg="liter"


--6. feladat:
select a.nev, a.ar*e.mennyiseg
from eladas e inner join aru a on a.aru_kod=e.aru_kod
order by a.nev


--7. feladat
select k.kat_nev, count(*)
from kategoria k, aru a
where k.kat_kod=a.kat_kod
group by k.kat_kod


--8. feladat:
select k.kat_nev, sum(a.ar*e.mennyiseg)
from kategoria k inner join aru a on k.kat_kod=a.kat_kod
	inner join eladas e on e.aru_kod=a.aru_kod
group by k.kat_nev

--9. feladat
select nev, ar
from aru 
order by ar desc
limit 1

--10. feladat:
select distinct k.kat_nev
from kategoria k, aru a
where k.kat_kod=a.kat_kod and a.ar>1000



,



