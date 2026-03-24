const catalogue = [ 
    { ref: 'A01', nom: 'Stylo bille',  prix: 1.20 }, 
    { ref: 'A02', nom: 'Cahier A4',    prix: 3.50 }, 
    { ref: 'A03', nom: 'Surligneur',   prix: 2.10 }, 
    { ref: 'A04', nom: 'Post-it',      prix: 3.80 }, 
    { ref: 'A05', nom: 'Ciseaux',      prix: 6.30 }, 
]; 

const produit = catalogue.find(produit => produit.ref = "A01")