select count(*) 
from Billets b 
join Voyages_has_Vols vv 
on b.idVoyage=vv.idVoyage 
where vv.idVol=1 and (select Classe from Classes where idClasse=

