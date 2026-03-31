<?php


class Produit {

private $nom;
private $prix; 
private $stock ;



public function __construct($nom , $prix , $stock){
    $this->nom = $nom;
    $this->prix = $prix;
    $this->stock = $stock;
}

public function getnom(){
    return $this->nom;
}
public function getprix(){
    return $this->prix;
}
public function getstock(){
    return $this->stock;
}

public function setprix($prix){
    if ($prix <0 ) {
        echo "le prix est non valide\n";
    }
     $this->prix = $prix;
}


public function setstock($stock){
    if ($stock <0 ) {
        echo "le stock est non valide\n";
    }
        $this->stock = $stock;
}
public function afiche(){
   echo $this->nom . " — " . $this->prix . "€ (stock : " . $this->stock . ")\n";
}
}

$produit1 = new Produit("DELL",500,10);
$produit2 = new produit("HP",300,5);

$produit1 ->setprix(30);
$produit1 ->setstock(10);
$produit1->afiche();

$produit2 ->setprix(80);
$produit2 ->setstock(-10);
$produit2->afiche();

echo $produit1->getnom();
echo $produit1->getprix();
echo $produit1->getstock();

echo $produit2->getnom();
echo $produit2->getprix();
echo $produit2->getstock();






