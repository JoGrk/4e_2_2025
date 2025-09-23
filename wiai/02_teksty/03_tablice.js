// 1. Tworzenie tablic
// A. utwórz tablicę numbers1 zawierającą 5 różnych liczb (konstruktor)

let numbers1 = new Array(4, 2, -7, 8, 41)
// console.log(numbers1)

// console.log(`jakiś tekst`)


// B. utwórz tablicę numbers2 z liczbami metodą z nawiasami

let numbers2 = [-1,2,-3,4,5]

// console.log(numbers2)
// C. utwórz tablicę texts z dowolnymi tekstami
let texts = ['kot','pies','mleko','miska']
// console.log(texts)
// D. utwórz tablicę tables zawierającą tablice liczb

let tables =[
    [1,2,3],
    [4,5,6],
    [7,8,9]
]


// 2. 
// A. wypisz pierwszy element tablicy numbers1
console.log(numbers1[0])

// B. wypisz drugi element tablicy numbers2
console.log(numbers2[1])
// C. wypisz ilość elementów tablicy texts
console.log(texts.length);

// D. wypisz ostatni element tablicy texts

console.log(texts[texts.length-1])
// E. wypisz pierwszy element pierwszego elementu zmiennej tables
console.log(tables[0][0]);



// 3.  
// A. posortuj tablicę numers1 i wypisz jej elementy
numbers1.sort()
console.log(numbers1)
// B. odwróć tablicę numbers2 i wypisz jej elementy
numbers2.reverse()
console.log(numbers2)

// 4. 
// A. wypisz każdy element tablicy numbers1 w osobnej instrukcji console.log, użyj for klasycznej
for(let i=0; i<numbers1.length; i++){
    console.log(numbers1[i])
} 
// B. wypisz każdy element tablicy numbers2 w osobnej instrukcji console.log, użyj for of (el of tab)
for(let el of numbers2){
    console.log(el)
}

// C. oblicz sumę elementów tablicy numbers1 korzystając z pętli for of

let suma = 0
for(let el of numbers1){
    suma = suma+el
}

console.log(suma);

// D. wypisz wszystkie dodatnie elementy tablicy numbers2 korzystając z pętli for of

for(let el of numbers2){
    if(el>=0){
        console.log(el)
    }
}

