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

-- Etape 2 : nombre de plats par categorie
SELECT categorie.nom as categorie ,count (*) as nbPlat FROM plat 
JOIN categorie ON plat.id_categorie=categorie.id_categorie 
GROUP BY categorie.id_categorie; 

-- Etape 3 : Montant total de chaque commande 
SELECT c.id_commande, SUM(lc.quantite * p.prix) AS montant
FROM commande c
JOIN ligne_commande lc ON c.id_commande = lc.id_commande
JOIN plat p ON lc.id_plat = p.id_plat
GROUP BY c.id_commande;

-- Etape 4 : liste des cmd  avec le nom client , client de passag si il n'y en a pas
SELECT COALESCE(cli.nom,'clientDePassage') AS client 
FROM commande c
LEFT JOIN client cli ON c.id_client=cli.id_client
GROUP BY cli.nom;

-- Etape 5 : nombre de commande et chiffre d'affaire par serveur

SELECT emp.nom,count (*) AS nbCommande, SUM(quantite * p.prix) AS CA
FROM commande  c
JOIN list_employe emp ON c.id_list_employe = emp.id_list_employe
JOIN ligne_commande lcmd ON c.id_commande = lcmd.id_commande
JOIN plat p ON lcmd.id_plat=p.id_plat 
GROUP BY emp.id_list_employe,c.id_commande;
