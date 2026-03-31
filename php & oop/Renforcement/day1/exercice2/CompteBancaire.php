<?php



class CompteBancaire {

 private $titulaire; 
 private $iban; 
 private $solde ;

public function __construct($titulaire, $iban , $solde = 0){
    $this->titulaire=$titulaire;
    $this->iban=$iban;
    $this->solde=$solde;
}

public function gettitulaire(){
    return $this->titulaire;
}
public function getiban(){
    return $this->iban;
}
public function getsolde(){
    return $this->solde;
}

public function deposer($montant = 0){
    if ($montant > 0) {
        $this->solde += $montant;
         echo "le mountant: $montant est valid\n";
    }

    else {
       echo "mountant non valide\n";
    }
}

public function retirer($montant = 0){
 
   if ($montant < 0) {
       echo "Solde insuffisant\n";
    }
   else if ($this->solde < $montant) {
       echo "solde est suffisant\n";
    }
else {
    $this->solde -= $montant;
}
    
}

public function  afficherInfos(){
 echo $this->titulaire."\n" . $this->iban ."\n". "votre corrent sold est : .$this->solde.\n" ;
}


}

$compt1= new CompteBancaire("mourad",3451,) ;
$compt2= new CompteBancaire("hind",3471,) ;

$compt1->deposer(20);
$compt1->retirer(5);
$compt1->afficherInfos();

$compt2->deposer(20);
$compt2->retirer(67);
$compt2->afficherInfos();