CREATE TABLE categorie(
    id_categorie SERIAL PRIMARY KEY,
    nom VARCHAR(100)
);

INSERT INTO categorie(nom) VALUES
('Plats malagasy'),
('Plats chinois'),
('Soupes'),
('Desserts'),
('Boissons');

ALTER TABLE plat ADD COLUMN id_categorie INTEGER REFERENCES categorie(id_categorie);

UPDATE plat SET id_categorie=1 WHERE id_plat=1;
UPDATE plat SET id_categorie=1 WHERE id_plat=2;
UPDATE plat SET id_categorie=1 WHERE id_plat=3;
UPDATE plat SET id_categorie=2 WHERE id_plat=4;
UPDATE plat SET id_categorie=3 WHERE id_plat=5;
UPDATE plat SET id_categorie=4 WHERE id_plat=6;
UPDATE plat SET id_categorie=5 WHERE id_plat=7;

ALTER TABLE plat ALTER COLUMN id_categorie SET NOT NULL;
