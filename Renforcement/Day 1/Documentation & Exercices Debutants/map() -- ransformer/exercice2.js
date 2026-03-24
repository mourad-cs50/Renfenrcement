const temperatures = [0, 15, 22, 35, -5, 100]; 

const Fahrenheit = temperatures.map(p => p * 9/5 + 32);

for (let i = 0; i < Fahrenheit.length; i++) {
    
    if (Fahrenheit[i] >= 30) {
        console.log("le Fahrenheit :" + Fahrenheit[i] + " et chaude");
    }
    else if (Fahrenheit[i] >= 20 && Fahrenheit[i] < 30) {
        console.log("le Fahrenheit :" + Fahrenheit[i] + " et Tempere");
    }
    else {
        console.log("le Fahrenheit :" + Fahrenheit[i] + " et Froid");
    }
}