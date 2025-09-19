// 1. Zapisz funkcję includes, która zwraca prawdę jeśli tekst będący jej drugim parametrem występuje w tekście, który jest jej pierwszym parametrem

function includes(text1, textFind){
    return text1.indexOf(textFind)>=0
}
console.log(includes('Na koszulce Joachima jest napisane crabito gatito', 'jest'))

// 2. Mutowalne dane to dane, którym w czasie ich istnienia możemy zmieniać części składowe - można zmieniać je po utworzeniu. Czy tablice są mutowalne? Czy napisy są mutowalne?

//   A. utwórz funkcję changeFirst z jednym parametrem, która zmienia pierwszy element swojego parametru na znak @

function changeFirst(text){
    text[0]=`@`
    return text
}
 //console.log(changeFirst(`Ryszard`))


// B. Zadeklaruj listę (tablicę) zawierającą dowolne znaki oraz zadeklaruj dowolny tekst
let list=['R','y','s','z','a','r','d']
let text='Ryszard'
// C. Wypisz efekt działania funkcji changeFirst  na  liście (tablicy)  oraz na tekście
console.log (changeFirst(text))
console.log (changeFirst(list))
// 3. Przygotuj funkcję changeFirstText, która zwraca tekst ze zmienionym pierwszym znakiem na znak @

function changeFirstText(text){
    return '@' + text.slice(1)
}
console.log(changeFirstText(text))
// 5. Czy metoda replace zamienia tylko pierwsze wystąpienie swojego parametru drugim parametrem, czy wszystkie? (tekst.replace(t1, t2) ). Przygotuj eksperyment, który to sprawdzi.

let text1='RowerRower'
console.log(text1.replace('Rower', 'Samochód'))

// 6 napisz funkcję toClause, która przyjmuje jako parametr tekst i zwraca tablicę, w której każdy każde zdanie (tekst oddzielony kropką) jest osobnym elementem tej tablicy

function toClause(text){
    return text.split(".")
}
console.log(toClause('Samochód.dada.fa'))

// 7. zadeklaruj tekst o podanej treści i następnie wypisz tekst przekształcony zgodnie z jego treścią:

// A. "powiększ mnie!"

console.log("powiększ mnie!".toUpperCase())
// B. 'ZAPISZ MNIE MAŁYMI LITERAMI'
console.log('ZAPISZ MNIE MAŁYMI LITERAMI'.toLowerCase());

// C. "!@#$ wytnij te dziwne znaki na początku"

console.log("!@#$ wytnij te dziwne znaki na początku".slice(5))

// D. 'sprawdź, czy zawieram słowo "czy" '

console.log('sprawdź, czy zawieram słowo "czy"'.indexOf('czy'))
// E. "podziel, ten, tekst, od, przecinków" (zwróć tablicę zawierającą słowa między przecinkami jako jej osobne elementy)
console.log("podziel, ten, tekst, od, przecinków".split(', '))
// 8. 

// A.  Przygotuj funkcję server, która dla adresu e-mail, który otrzyma jako parametr, zwróci adres serwera (część po znaku @)
function server (email){
    let n = email.indexOf('@')
    return email.slice(n+1)
}
console.log(server('mama@wp.pl'))


// B. zmodyfikuj funkcję server tak, aby nazwa serwera była zapisana wielkimi literami

const server2 = (email) => {
    let n = email.indexOf('@')
    return email.slice(n+1).toUpperCase()
}

console.log(server2('mama@wp.pl'))
// C.zmodyfikuj funkcję server tak, aby w przypadku, gdy parametr nie zwierał @ zwracała tekst "to nie jest prawidłowy adres e-mail).

const serv3 = (email)=>{
    let n = email.indexOf('@')
    if(n==-1){
        return `to nie jest prawidłowy adres e-mail`
    }
    else{
        return email.slice(n+1).toUpperCase()
    }
}
console.log(serv3(`krzysiekpolo`))
console.log(serv3(`krzysiekpolo@gmail.com`))

// 9. utwórz funkcję initials, która przyjmuje jako parametr tekst zawierający imię i nazwisko (np. "Jan Kowalski") i zwraca inicjały, czyli pierwszą literę imienia i pierwszą literę nazwiska, zapisaną małymi literami

// 10. zmodyfikuj poprzednią funkcję tak, aby w przypadku, gdy osoba ma dwa imiona, do inicjału było brane tylko pierwsze imię