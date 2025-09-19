// 1. utwórz funkcję, która zwróci tekst będący jej parametrem, ale wszystkie wielkie litery powinny być zamienione na małe

 function upperToLower(word){
    return word.toLowerCase()
 }

 console.log(upperToLower(`WITAM`))

// 2. Utwórz funkcję, która będzie miała dwa parametry i zwróci ten, który jest dłuższy
function isLonger(text1, text2){
    if (text1.length>text2.length){
        return text1
    }else if(text2.length>text1.length){
        return text2
    }else{
        return `oba są równej długości `
    }
}
 
console.log(isLonger('oko', 'pies'))
console.log(isLonger('fabianLabich', 'norwegia'))



// 3. Utwórz funkcję, która sprawdzi, czy w napisie podanym jej jako parametr jest znak @, a jeśli tak, to wyświetli tekst "małpa została znaleziona na pozycji n" (gdzie n to pozycja) oraz "nie ma małpy" w przeciwnym wypadku
const ifMonkey = (text1)=>{
    let n=text1.indexOf("@")
    if(n>-1){
        console.log(`Małpa została znaleziona na pozycji: ${n}`)
    }
    else{
        console.log(`Nie ma małpy`)
    }
}
ifMonkey(`@niewiem`)
ifMonkey(`niewiem`)
ifMonkey(`nie@wiem`)
ifMonkey(`nie@wiem@`)
 

// 4. Napisz funkcję firstFive, która zwraca pięć pierwszych liter z tekstu, który jej parametrem (użyj substring)

function firstFive(text1){
    console.log(text1.substring(0, 5));
}

firstFive('JakiesDluzseCos')

// 5. Napisz funkcję lastFive, która zwraca ostatnie pięć liter z tekstu, który jest jej parametrem (użyj slice)
function lastFive(text1){
    return text1.slice(-5)
}
console.log(lastFive(`AlaMaKotafnfnfnfUUUUU`))

// 6. Zapisz funkcję midFive, która zwraca środkowe pięć znaków z tekstu, który jest jej parametrem (użyj slice)
function midFive(text1){
    let n=text1.length/2
    return text1.slice(n-2,n+3)
}
console.log(midFive(`testowydtekst`))

// 7. Zapisz funkcje toInitial z dwoma parametrami: imię i nazwisko, która zwróci inicjały

function toInitial(firstName, lastName){
    return firstName.slice(0, 1).toUpperCase()+lastName.slice(0, 1).toUpperCase()
}
console.log(toInitial('Fabian', 'Labich'))

// 8. Zapisz funkcję shorten, która skróci tekst będący jej parametrem do długości podanej drugim parametrem i dodatkowo dopisze na końcu ... (trzy kropki)

function shorten(text1,textLenght){
    return text1.slice(0,textLenght)+`...`
}
console.log(shorten(`Wiktor`,5))
// 9. Zapisz funkcję createLogin z dwoma parametrami: imię i nazwisko, która weźmie pierwszą literę imienia doda kropkę i nazwisko, dodatkowo zmieniając całość na małe litery
function createLogin(name,surname){
    return name.slice(0,1).toLowerCase()+`.`+surname.toLowerCase()
}
console.log (createLogin('raz','dwa'))