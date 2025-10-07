// 1. Utwórz tablicę 8 liczb całkowitych.  Korzystając z forEach i funkcji strzałkowej 
let tabl2 = [1,-2,3,-4,5,-6,7,8]
// A. wypisz każdy element tablicy imie
tabl2.forEach(el=> {
    console.log(el)
});
// B. wypisz kwadrat każdego elementu tablicy imie
tabl2.forEach(el=> {
    console.log(el**2)
})
// wypisz z tablicy imie wszystkie liczby dodatnie
tabl2.forEach(el=> {
    if(el>0){
        console.log(el)
    }
})
// wypisz z tablicy imie wszystkie liczby parzyste

tabl2.forEach(el=> {
    if(el%2 ==0){
        console.log(el)
    }
})
// 2. Korzystając z forEach i funkcji strzałkowej 

// C. wypisz iloczyn elementów tablicy imie
let iloczyn=1
tabl2.forEach(el=> {
    iloczyn*=el
})
console.log(iloczyn)
// D. wypisz najmniejszy element w tablicy imie 
let min=tabl2[0]
tabl2.forEach(el=> {
 if(el<min){
    min = el
 }
})
console.log(min)
// 3. 

// .A Utwórz tablicę imion osób z Twojej klasy
let imiona=[`Jakub`,`Szymon`,`Wiktor`]
// B. Powitaj wszystkich  "Witaj, imie, miłego dnia!"
imiona.forEach(el=>{
    console.log(`Witaj, ${el}, miłego dnia!`)
})
// 4. Utwórz tablicę numbers zawierającą 10 liczb całkowitych (mniej więcej). Utwórz funkcje, która wykorzysta forEach i funkcje strzałkowe do: 

let numbers = [-12, 34, 83, -7]

// A obliczenia i zwrócenia iloczynu elementów tablicy, którą otrzyma jako swój parametr
// B. obliczenia i zwrócenia największego elementu tablicy. 
 

// 5.

// A. Utwórz tablicę pomiary_inicjały- 5 dowolnych liczb, w tym rzeczywistych

let numbers = [-12, 34, 83, -7, 7.58]

// B. Utwórz obiekt wyniki_inicjały z polami: suma, iloczyn (dodatkowo min i max)

let wyniki = {
    suma:0,
    iloczyn:1,
    min:numbers[0],
    max:numbers[0]
}

console.log(wyniki)

// C. Oblicz sumę i iloczyn elementów tablicy pomiary_inicjały i zapisz je w tablicy wyniki_inicjały (dodatkowo min i max)

numbers.forEach(el=>{
    console.log(wyniki)
    wyniki.suma+=el
    wyniki.iloczyn*=el
    if(wyniki.min<el){
        wyniki.min=el
    }
    if(wyniki.max>el){
        wyniki.max=el
    }
})
console.log(wyniki)
