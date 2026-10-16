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