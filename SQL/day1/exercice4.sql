SELECT restaurant.nom, restaurant.ville,restaurant.note_moy 
FROM restaurant
GROUP BY restaurant.id
order BY restaurant.note_moy DESC
LIMIT 3

