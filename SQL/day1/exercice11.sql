SELECT utilisateurs.nom , COUNT(commandes.id ) as totat_commandes_id
FROM utilisateurs
INNER JOIN commandes on utilisateurs.id = commandes.client_id
GROUP by (utilisateurs.nom) HAVING COUNT(commandes.id )>= 3