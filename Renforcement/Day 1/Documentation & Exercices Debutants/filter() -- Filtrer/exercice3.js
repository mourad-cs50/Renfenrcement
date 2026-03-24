const mots = 
['chat','cheval','chien','lion','chameau','cobra','loup','chevre']; 

const ch = mots.filter(filter=>filter.startsWith("ch"));

for (let i = 0; i < mots.length; i++) {
    if (ch && mots[i].length > 5) {
        console.log(mots[i]);
    }
    
}