SELECT 
    c.id AS commande_id,
    client.nom AS nom_client,
    livreur.nom AS nom_livreur,
    r.nom AS nom_restaurant,
    c.total
FROM commandes c
INNER JOIN utilisateurs client ON c.client_id = client.id
INNER JOIN utilisateurs livreur ON c.livreur_id = livreur.id
INNER JOIN restaurant r ON c.restaurant_id = r.id
WHERE c.statut = 'livré';