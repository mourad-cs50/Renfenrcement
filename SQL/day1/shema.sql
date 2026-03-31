CREATE DATABASE Mon_livraison;
USE Mon_livraison;

CREATE Table Utilisateurs(
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(20),
    email VARCHAR(30),
    type enum('client','livreur'),
    created_at DATE
);

CREATE TABLE Commandes(
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    client_id INTEGER,
    livreur_id INTEGER,
    restaurant_id INTEGER,
    statut ENUM('livré', 'en cours', 'annulé'),
    total DECIMAL,
    created_at DATE,
    Foreign Key (client_id) REFERENCES Utilisateurs(id),
    Foreign Key (livreur_id) REFERENCES Utilisateurs(id),
    Foreign Key (restaurant_id) REFERENCES Restaurant(id)
);

CREATE TABLE Restaurant(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(20),
    ville VARCHAR(20),
    note_moy FLOAT
);

CREATE TABLE Plats(
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    restaurant_id INTEGER,
    nom VARCHAR(20),
    prix DECIMAL,
    categorie VARCHAR(20)
);
CREATE TABLE Notaions(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    commande_id INTEGER,
    note INTEGER,
    commentaire TEXT
);

CREATE TABLE Lignes_commande(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    commande_id INTEGER,
    plat_id INTEGER,
    quantite INTEGER,
    prix_unit DECIMAL
);

-- Utilisateurs
INSERT INTO Utilisateurs (nom, email, type, created_at) VALUES
('Jean Moreau', 'jean@mail.com', 'client', '2024-04-10'),
('Sophie Bernard', 'sophie@mail.com', 'client', '2024-04-12'),
('Karim Benz', 'karim@mail.com', 'livreur', '2024-03-22'),
('Laura Simon', 'laura@mail.com', 'client', '2024-05-01'),
('Nicolas Henry', 'nicolas@mail.com', 'livreur', '2024-04-18'),
('Salma Idrissi', 'salma@mail.com', 'client', '2024-05-05');

-- Restaurant
INSERT INTO Restaurant (nom, ville, note_moy) VALUES
('Pasta Roma', 'Paris', 4.2),
('Grill House', 'Lyon', 4.0),
('Ocean Sushi', 'Nice', 4.6),
('Taco Loco', 'Bordeaux', 3.8),
('Cafe Parisien', 'Paris', 4.4);

-- Commandes
INSERT INTO Commandes (client_id, livreur_id, restaurant_id, statut, total, created_at) VALUES
(8, 10, 6, 'livré',    26.00, '2024-06-01'),
(9, 12, 8, 'livré',    48.50, '2024-06-03'),
(11, 10, 7, 'en cours',18.75, '2024-06-05'),
(8, 12, 9, 'annulé',   15.00, '2024-06-07'),
(13, 10,10, 'livré',   32.40, '2024-06-10');

-- Plats
INSERT INTO Plats (restaurant_id, nom, prix, categorie) VALUES
(6, 'Spaghetti Bolognaise', 11.00, 'Pasta'),
(6, 'Lasagnes', 13.50, 'Pasta'),
(7, 'Steak Grill', 16.00, 'Grill'),
(8, 'Dragon Roll', 15.00, 'Sushi'),
(8, 'Maki Avocat', 10.00, 'Sushi'),
(9, 'Tacos Boeuf', 7.00, 'Tacos'),
(10, 'Café Latte', 4.50, 'Boisson');

-- Notations
INSERT INTO Notaions (commande_id, note, commentaire) VALUES
(8, 5, 'Très bon service !'),
(9, 4, 'Repas délicieux'),
(10, 3, 'Livraison un peu lente'),
(11, 5, 'Parfait !'),
(12, 4, 'Je recommande');

-- Lignes_commande
INSERT INTO Lignes_commande (commande_id, plat_id, quantite, prix_unit) VALUES
(8, 10, 2, 11.00),
(8, 11, 1, 13.50),
(9, 13, 2, 15.00),
(9, 14, 1, 10.00),
(10, 12, 1, 16.00),
(11, 15, 2, 7.00),
(12, 16, 3, 4.50);