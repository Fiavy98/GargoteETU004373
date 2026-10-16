-- Etape 1 : afficher les plats du plus cher au moins cher.
-- Plats plus cher 
SELECT *
FROM PLAT
ORDER BY prix DESC
LIMIT 1;

-- Plats le moins cher 
SELECT *
FROM PLAT
ORDER BY prix ASC
LIMIT 1;

-- Etape 2 
SELECT categorie.nom as categorie ,count (*) as nbPlat FROM plat 
JOIN categorie ON plat.id_categorie=categorie.id_categorie 
GROUP BY categorie.id_categorie; 