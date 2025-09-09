// Napisz funkcję greet z dwoma parametrami: pora dnia i imię. Funkcja wypisuje w konsoli "Good [pora dnia], [imię]"
const greet=(daytime, name)=>{
    console.log(`good ${daytime}, ${name}`)
}
greet(`afternoon`,`Marek`)
// funkcje średnia, z dwoma parametrami, zwraca wartość średniej  ze swoich parametrów, wywołaj funkcję dla obliczenia i wypisania wartości średniej z dowolnych dwóch liczb 
const average=(a,b)=>{
    return (a+b)/2
}
console.log(average(10,3))
// Napisz funkcję triple, która zwraca potrojoną wartość swojego parametru (użyta suma)  Wywołaj dla liczby i dla tekstu
const triple = (something)=>{
    return something+something+something
}
console.log(triple(1));
console.log(triple('text'));
// funkcje isOdd z jednym parametrem liczbowym, zwraca true, gdy jest nieparzysty i false w przeciwnym wypadku. Wywołaj dla -8 i 15
const isOdd = (a)=>{
    return a%2 == 1
}
console.log(isOdd(-8))
console.log(isOdd(15))

// funkcja isDivided  zwraca prawdę, gdy pierwszy parametr dzieli się przez drugi i fałsz w przeciwnym wypadku. Sprawdź wywołując funkcję.

// napisz funkcję isLeapYear, zwraca wartość prawdy, gdy rok jest
// przestępny i false w przeciwnym wypadku. Wykorzystaj funkcję isDivided. Wywołaj

// napisz funkcję halfOf, zwraca połowę swojego argumentu. Wywołaj

// is longerThan , pierwszy parametr to tekst, drugie liczba, zwraca true jeśli długość pierwszego parametru jest większa od drugiego parametru

// Napisz funkcję obliczającą cenę sprzedaży na podstawie dwóch swoich parametrów: oryginalnej ceny i rabatu podanego w procentach (np. 10 gdy jest to 10%) (salePrice, originalPrice, discountPercent)