const temperatures = [
    {celsius : [0, 15, 22, 35, -5, 100]},
    {status : ["chaude" , "froid"]}
]; 


    let Fahrenheit = temperatures[0].celsius.map(p=>p* 9/5 + 32);
    console.log(Fahrenheit);

for (let i = 0; i < Fahrenheit.length; i++) {
    if (Fahrenheit[i] > 30) {
        console.log("temperatures : " + Fahrenheit[i] + " est : " + temperatures[1].status[0]);
    }
    else  {
        console.log("temperatures : " + Fahrenheit[i] + " est : " + temperatures[1].status[1]);
    }
    
    
}