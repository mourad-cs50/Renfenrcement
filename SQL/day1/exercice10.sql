SELECT plats.nom,SUM(lignes_commande.quantite) AS total_quantite
FROM plats
INNER JOIN lignes_commande ON plats.id = lignes_commande.plat_id
INNER JOIN commandes ON commandes.id = lignes_commande.commande_id
WHERE commandes.statut = 'livré'
GROUP BY plats.id, plats.nom;