<!-- Le schema  rationnel a jour -->
# Etape 1 : 
| Élément | Notation | Exemple |
|---|---|---|
| Clé primaire | **En gras** | PLAT(**id_plat**, nom, prix) |

### Piege 
- Type pour le prix : INTEGER (entier)
- identifiant : id_plat SERIAL PK

---

# Etape  2: 
### Ajouter :
| Élément | Notation | Exemple |
|---|---|---|
| Clé primaire | **En gras** | categorie(**id_categorie**, nom) |

### Modifier :
| Élément | Notation | Exemple |
|---|---|---|
| Clé étrangère | précédée de # | PLAT(id_plat, nom, prix, #id_categorie) |

### Piege :
- on n'ajoute pas directement categorie VARCHAR(50) dans la table plat 
car un categorie peuvent s'associer au plusieur plat 
- il est difficile de jouer avec  les caractere (VARCHAR), example un ereur de saisie 
tandis que le categorie doivent unique

---

# Etape 3 :
### Ajouter :
| Élément | Notation | Exemple |
|---|---|---|
| Clé primaire | **En gras** | CLIENT(**id_client**, nom) |
| Attribut facultatif (NULL autorisé) | Suivi de `?` | COMMANDE(**id_commande**, date_commande, #id_client?) |
| Clé primaire composée (tous les attributs concernés) | **En gras** | LIGNE_COMMANDE(**id_commande**, **id_plat**, quantite) |

### Piege : 
- on place le quantite dans la table LIGNE_COMMANDE

---
