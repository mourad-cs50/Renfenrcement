SELECT restaurant.nom , commandes.statut ,COUNT(commandes.restaurant_id)
FROM restaurant
LEFT JOIN commandes ON restaurant.id = commandes.restaurant_id
GROUP by restaurant.nom
