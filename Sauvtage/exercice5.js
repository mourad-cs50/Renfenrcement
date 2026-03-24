let courses = [ 
  { nom: "Pain",  prix: 10 }, 
  { nom: "Lait",  prix: 20 }, 
  { nom: "Oeufs", prix: 30 }
  ];

  let total = 0;
    for (let i = 0; i < courses.length; i++) {
        total += courses[i].prix;
    }

    console.log("Le total des courses est : " + total);