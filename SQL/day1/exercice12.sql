SELECT utilisateurs.nom,AVG(notaions.note) AS moyenne_note
FROM utilisateurs
INNER JOIN commandes ON utilisateurs.id = commandes.livreur_id
INNER JOIN notaions ON commandes.id = notaions.commande_id
GROUP BY utilisateurs.id, utilisateurs.nom
ORDER BY moyenne_note DESC
