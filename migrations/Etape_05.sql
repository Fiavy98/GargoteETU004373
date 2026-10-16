CREATE TABLE type_employe(
    id_type_employe SERIAL PRIMARY KEY,
    libelle VARCHAR(10)
);

CREATE TABLE list_employe(
    id_list_employe SERIAL PRIMARY KEY,
    id_type_employe INTEGER REFERENCES type_employe(id_Type_employe),
    nom VARCHAR(200)
);

CREATE TABLE tables(
    id__table SERIAL PRIMARY KEY,
    nom VARCHAR(20)
);

ALTER TABLE ligne_commande ADD COLUMN id_list_employe INTEGER REFERENCES list_employe(id_list_employe);
-- ALTER TABLE ligne_commande ALTER COLUMN id_list_employe SET NOT NULL;

INSERT INTO type_employe(libelle) VALUES
('serveurs'),
('cuisiniere');

INSERT INTO list_employe(id_type_employe,nom) VALUES
(1,'Njaka Rakoto'),
(1,'Lalao Rasoa');

INSERT INTO tables(nom) VALUES 
('table 1'),
('table 2'),
('table 3'),
('table 4'),
('table 5'),
('table 6'),
('table 7'),
('table 8');


INSERT INTO commande (date_commande, id_client) VALUES
('2026-10-10', 1), -- 7
('2026-10-11', 2); -- 8


INSERT INTO ligne_commande (id_commande, id_plat, quantite,id_list_employe) VALUES
(7, 1, 2,1),
(7, 3, 1,1),
(7, 7, 2,1),
(8, 2, 1,2),
(8, 5, 2,2);