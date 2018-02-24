
--1-2. feladat
create database foglalkoztatas default charset utf8 collate utf8_hungarian_ci;

-- 3. feladat: nincs jelentés létrehozás mysql -ben
select r.regionev, m.megyenev
from regiok r, megyek m
where r.regiokod=m.regiokod
order by r.regionev asc, m.megyenev asc

--4. feladat:
select m.megyenev, avg(f.mezogazdasag) as "átlag"
from megyek m, foglalkozasok f
where m.megyekod=f.megyekod
group by m.megyenev

--5. feladat:
select r.regiokod, sum(f.mezogazdasag+f.ipar+f.szolgaltatas) as "fő"
from regiok r, foglalkozasok f, megyek m
where r.regiokod=m.regiokod and m.megyekod=f.megyekod
group by r.regiokod

--6. feladat:
select m.megyenev, (f.mezogazdasag+f.ipar+f.szolgaltatas)/l.lakosszam*100 as "százalék"
from lakosok l, foglalkozasok f, megyek m
where l.megyekod=m.megyekod and m.megyekod=f.megyekod
order by százalék desc

--7. feladat:
select sum(f.mezogazdasag+f.ipar+f.szolgaltatas)/sum(l.lakosszam)*100 as "százalék"
from lakosok l, foglalkozasok f 
where l.megyekod=f.megyekod

--8. feladat:
alter table foglalkozasok 
add evszam int;

update foglalkozasok
set evszam=2005
where evszam is null




















