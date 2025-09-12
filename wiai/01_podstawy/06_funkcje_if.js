// 1, Funkcja abs, która zwraca wartość bezwzględną  ze swojego parametru. (jeśli liczba jest ujemna, zwraca liczbę przeciwną do parametru (dodaje minus), w przeciwnym wypadku zwraca parametr bez zmian
const abs = (a)=>{
    if(a<0){
        return -a
    }
    else{
        return a
    }
}
console.log(abs(5))
console.log(abs(-7))

// 2. Funkcja min z dwoma parametrami liczbowymi, która zwraca mniejszy z dwóch parametrów

const min = (a,b)=>{
    if(a>b){
        return b
    }
    else{
        return a
    }
}
console.log(min(4,5))
console.log(min(21,9))

// 3. Funkcja max z trzema parametrami liczbowymi, zwraca największą wartość. Nie używaj funkcji Math.max.

const max=(a,b,c)=>{
    if(a>b && a>c){
        return a
    }
    else if(b>a && b>c){
        return b
    }
    else{
        return c
    }
}

console.log(max(4,5,6))
console.log(max(10,30,20))

// 4. Funkcja wypisuje ilość pierwiastków równania kwadratowego na podstawie parametrów a, b, c równania ax2 + bx + c = 0

const squareRoot = function(a,b,c){
    let delta = b*b-4*a*c
    if(delta>0){
        console.log('funkcja ma 2 pierwiastki')
    }
    else if(delta==0){
       console.log('funkcja ma 1 pierwiastek')
    }
    else{
        console.log('funkcja nie ma pierwiastków')
    }

}
squareRoot(10,20,3)


// 5. Funkcja oblicza i wypisuje pierwiastki równania kwadratowego ax2 + bx + c = 0 Pierwiastek kwadratowy z x to to Math.sqrt(x)

function calcRoot(a,b,c){
    let delta =b*b-4*a*c
    if(delta>0){
        console.log(`Pierwszy:${(-b-Math.sqrt(delta))/(2*a)}`);
        console.log(`Drugi:${(-b+Math.sqrt(delta))/(2*a)}`);
        
    }
    else if (delta==0){
        console.log(`Pierwiastek:${(-b)/(2*a)}`);
        
    }
    else {
        console.log('brak pierwiastków')
    }
}

calcRoot(1,2,1)
calcRoot(1, 4, 1)
calcRoot(4,1,1)