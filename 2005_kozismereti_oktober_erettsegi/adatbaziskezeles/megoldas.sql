create database mataku default charset utf8 collate utf8_hungarian_ci;

create table kutya (
	sor int,
	fajta varchar(50),
	nem varchar(50),
	kor float,
	neve varchar(50),
	constraint pk_kutya primary key (sor)
);

create table eltunt(
	sor int,
	hely varchar(50),
	mikor date,
	constraint pk_eltunk primary key (sor),
	constraint fk_eltunkt_kutya foreign key (sor) references kutya(sor)
);

--3. feladat
select neve, fajta, kor
from kutya
where fajta="dalmata";

--4. feladat
select k.neve, e.mikor
from kutya k, eltunt e
where k.sor=e.sor and e.hely like "XIII.%";

--5. feladat
select k.neve, e.mikor
from kutya k inner join eltunt e on k.sor=e.sor
where e.mikor>"2004.12.31";

--6. feladat
select k.neve, e.mikor
from kutya k, eltunt e
where k.sor=e.sor and k.nem="kan"
order by e.mikor
limit 1;

--7. feladat
select fajta, count(*) as db
from kutya
where fajta not like "%keverék%"
group by fajta;

--8. fealdat:
select e.hely, count(*) as db
from kutya k, eltunt e
where k.sor=e.sor
group by e.hely
having db>1

--9. feladat
select k.neve, e.hely, e.mikor
from kutya k, eltunt e
where k.sor=e.sor;












