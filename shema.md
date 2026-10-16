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