SELECT SUM(commandes.total) , 
AVG(commandes.total) 
FROM commandes
WHERE commandes.statut = 'livré'