--3. feladat:
select nev, osztaly
from vizsgazo
where osztaly like "9%"
order by nev

--4. feladat
select nev
from vizsgatargy
order by irmax desc
limit 1
--------------------------------
select nev
from vizsgatargy
where irmax=(select max(irmax)
			 from vizsgatargy)
			 
-- 5. feladat:
select v.nev, vt.nev
from vizsgazo v, vizsgatargy vt, vizsga vv
where vv.vizsgazoaz=v.azon and vv.vizsgatargyaz=vt.azon and 
vv.irasbeli/vt.irmax*100<10

-- 6. feladat:
select vt.nev,count(*) as "db", avg(vv.irasbeli) as "írásbeli átlag", avg(vv.szobeli) as "szóbeli átlag"
from vizsgazo v 
	inner join vizsga vv on vv.vizsgazoaz=v.azon
	inner join vizsgatargy vt on vv.vizsgatargyaz=vt.azon
where v.osztaly="12/A"
group by vt.nev

--7. feladat:
alter table vizsga add teljesitmeny int;
alter table vizsga modify teljesitmeny double;

update vizsga vv, vizsgatargy vt
set vv.teljesitmeny=(vv.szobeli+vv.irasbeli)/(vt.irmax+vt.szomax)
where vv.vizsgatargyaz=vt.azon

--8. feladat:
select v.nev
from vizsgatargy vt, vizsga vv, vizsgazo v
where vv.vizsgatargyaz=vt.azon and v.azon=vv.vizsgazoaz and	
	(v.osztaly like '11%' or v.osztaly like '12%') and 
	vv.irasbeli>(select avg(vv.irasbeli)
				from vizsgatargy vt, vizsga vv, vizsgazo v
				where vv.vizsgatargyaz=vt.azon and v.azon=vv.vizsgazoaz and	(v.osztaly like '11%' or v.osztaly like '12%') and vt.nev="történelem")
				
--9. feladat
select v.osztaly, count(*) as "db"
from vizsga vv, vizsgazo v
where vv.vizsgazoaz=v.azon and vv.szobeli+vv.irasbeli>=90
group by v.osztaly




			 
			 
			 
			 
			 
			 
			 
			 
			 
			 