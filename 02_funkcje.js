function prepareTea(teaType){
    return `Zaparzyłem ${teaType} herbatę`
}

console.log(prepareTea('zieloną'))

// 1. Utwórz funkcję powitanie, która pobiera jako argument imie i wypisuje komunikat "witam. imie - miłego dnia życzę!" (w miejscu imię wstawia wartość parametru). Wykorzystaj funkcję do powitania kilku kolegów/.koleżanek z klasy



function greeting(name){
    console.log(`witam ${name} - miłego dnia życzę!`)
}

greeting(`Tomasz`)
greeting(`Mariusz`)

// 2. Utwórz funkcję iloczyn, która ma dwa argumenty i zwraca ich iloczyn. Wywołaj funkcję dla obliczenia iloczynu liczb 34 i 99 oraz 33 i 7

function product(num1, num2){
    return num1*num2
}

console.log(product(34, 99))
console.log(product(33, 7))

// 3. utwórz funkcję kw, która ma jeden argument i podnosi go do kwadratu. Poza funkcją zadeklaruj dwie zmienne x i y (x jest równy 345, y równy 678). Wykorzystując funkcję kw  wyświetl kwadrat z x, kwadrat z y, a następnie kwadrat z sumy liczb x i y. 

function square(number){
    return number**2
}

let x=345
let y=678

console.log(square(x))
console.log(square(y))
console.log(square(x+y))