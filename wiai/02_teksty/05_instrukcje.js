// 1. Zapisz instrukcję while, która wypisze ciąg liczb od 1 do 20

let a=1
while(a<=20){
    console.log(a)
    a++
}



// 2. Zmodyfikuj poprzednie zadanie tak, aby była wypisywana co druga liczba (1, 3, 5, itd.)

let a=1
while(a<=20){
    console.log(a)
    a+=2
}

// 3. Zmodyfikuj poprzednie zadanie tak, aby wypisywać co drugą liczbę z zakresu od 10 do 100 
let b=10
while(b<=100){
    console.log(b)
    b+=2

}

// 4. Wypisz 10 wyrazów ciągu 1 4 7 10 13 ... użyj while
let c=1, i=0
while(i<10){
    console.log(c)
    c+=3
    i++
}



// 5. Wypisz 20 wyrazów ciągu 50 45 40 35 30 ... użyj while

let d=50
i=0
while(i<20){
    console.log(d)
    d-=5
    i++
}

// 6. Wypisz liczby od 10 do 20, użyj pętli for
for (let e=10 ; e<=20 ; e++){
    console.log(e)
}
// 7. Wypisz 10 wyrazów ciągu 12 14 16 18 ...., użyj pętli for
let f=12
for (i=0 ; i<10 ; i++){
    console.log(f)
    f+=2
}

// 8. Zadeklaruj tablicę tab1 zawierającą 10 dowolnych liczb (dodatnie, ujemne, parzyste, nieparzyste). 

let tabl1 = [1,4,-6,3,45,-4,78,221,9,-10]

// 9, Wypisz 5 pierwszych elementów tablicy tab1. Użyj klasycznej pętli for

for(i=0;i<5;i++){
    console.log(tabl1[i])
}

// 10.  Wypisz wszystkie elementy tablicy tab1. Użyj klasycznej pętli for

// 11. Wypisz ujemne elementy tablicy tab1. użyj klasycznej pętli for

// 12. Wypisz parzyste elementy tablicy tab1. Użyj for of..

// 13. Wypisz sumę elementów tablicy tab1. Użyj for of....

// 14. Wypisz największy element tablicy tab1. Użyj for of....