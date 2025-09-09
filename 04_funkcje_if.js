// 1. utwórz funkcję, która przyjmuje jako parametr tablicę i zwraca pierwszy element tablicy. Wykorzystaj do wypisania pierwszego elementu dowolnych dwóch tablic.

function firstElement(table){
    return table[0]
}

let table1=[2,68,48,7]
let table2=[25,85,8,3]

console.log(firstElement(table1))
console.log(firstElement(table2))

// 2. Utwórz funkcję  mniej100 z dwoma parametrami, która sprawdza, czy suma jej elementów jest mniejsza niż 100. Jeśli tak, to zwraca wartość true, jeśli nie, zwraca false. Wypróbuj funkcję dla kliku różnych zestawów parametrów. 

 function less100(a,b){
    return a+b<100
 }
console.log(less100(46,44))

// 3. Utwórz funkcję czyRowne z dwoma parametrami. Funkcja zwraca true, gdy są równe i false w przeciwnym wypadku. Wypróbuj funkcję dla kliku różnych zestawów parametrów. 

const ifEqual = function(a,b){
    return a===b
}
console.log(ifEqual(10,10));
console.log(ifEqual(`40`,40));


 

// 4. Utwórz funkcję czyParzyste, która sprawdza, czy jej parametr jest parzysty. Jeśli tak, to zwraca true, w przeciwnym wypadku false  Wypróbuj funkcję dla kliku różnych parametrów. 

 const ifEven = function(a){
    return a%2==0
 }
 console.log(`zad 4`)
 console.log(ifEven(18))

// 5. Zapisz funkcję polacz, która ma dwa parmatery: imię i nazwisko i zwraca połączone je jako jeden tekst (imie nazwisko). Wykorzystaj funkcję do połączenia i wypisania kilku imion i nazwisk.

const connect = function(name, surname){
    return name+` `+surname
} 
console.log(connect(`Marcin`, `Kowalski`))
// 6. Zatrudniłeś trzech programistów i im płacisz. Napisz funkcję, która jako parametr przyjmuje trzy różne stawki dla programistów i zwraca różnicę między największą wartością a najmniejszą. Przykład: programista(147,33,526) zwraca 493, a programista(33,72,74) wraca 41

 const programer = function(salary1, salary2, salary3){
    return Math.max(salary1, salary2, salary3)-Math.min(salary1, salary2, salary3)
 }
 console.log(programer(147,33,526))

 

 

// 7. Utwórz funkcję czyTrojkat, która przyjmuje jako parametry trzy liczby i sprawdza, czy można z nich utworzyć trójkąt. Przykład: czyTrojkat(2,3,4) zwraca true, a czyTrojkat(4,3,8) zwraca false (najdłuższy bok musi być mniejszy od sumy dwóch pozostałych boków)

const ifTriangle = function(a, b, c){
    return a+b>c && b+c>a && c+a>b
}
console.log(ifTriangle(2,3,4))
console.log(ifTriangle(4,3,8))