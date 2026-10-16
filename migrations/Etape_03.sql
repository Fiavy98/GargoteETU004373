CREATE TABLE client (
    id_client SERIAL PRIMARY KEY,
    nom VARCHAR(100)
);

CREATE TABLE commande (
    id_commande  SERIAL PRIMARY KEY,
    date_commande DATE,
    id_client INTEGER REFERENCES client(id_client)
);

CREATE TABLE ligne_commande (
    id_ligne_commande SERIAL PRIMARY KEY,
    id_commande INTEGER REFERENCES commande(id_commande),
    id_plat INTEGER REFERENCES plat(id_plat),
    quantite INTEGER
);


INSERT INTO client (nom) VALUES
('Rakoto'),
('Rabe'),
('Rasoa');

INSERT INTO commande (date_commande, id_client) VALUES
('2026-10-10', 1),
('2026-10-11', 2),
('2026-10-12', 1),
('2026-10-13', 3),
('2026-10-14', 4),
('2026-10-15', 2);

INSERT INTO ligne_commande (id_commande, id_plat, quantite) VALUES
(1, 1, 2),
(1, 3, 1),
(1, 7, 2),
(2, 2, 1),
(2, 5, 2),
(3, 4, 3),
(3, 6, 4),
(4, 1, 1),
(4, 2, 2),
(5, 3, 2),
(5, 5, 1),
(6, 4, 2),
(6, 7, 3);

