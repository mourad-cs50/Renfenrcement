SELECT utilisateurs.nom,
SUM(commandes.total) as total
FROM utilisateurs
INNER JOIN commandes ON utilisateurs.id = commandes.client_id
GROUP BY utilisateurs.id
