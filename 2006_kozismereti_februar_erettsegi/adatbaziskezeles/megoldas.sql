--1-2. feladat:
create database csaladfa default charset utf8 collate utf8_hungarian_ci;

--3. feladat:
select nev, mettol, meddig 
from csaladtag
where nev like "%Péter%"

--4. feladat
select nev, meddig-mettol as "kor"
from csaladtag
where nev="György"

--5. feladat
select nev, mettol
from csaladtag
where mettol>=1780 and mettol<=1800

--6. feladat
select nev, meddig-mettol as "kor"
from csaladtag
order by kor desc
limit 1

--7. feladat
select sz.anyja
from csaladtag cs, szulo sz
where cs.azon=sz.azon and cs.nev="Rita"

--8. feladat
select nev
from csaladtag
where azon in (select sz.apja
				from csaladtag cs, szulo sz
				where cs.azon=sz.azon and cs.nev="Rita");

--9. feladat
select nev
from csaladtag
where azon in (select apja
				from szulo
				group by apja
				having count(*)>1)
















