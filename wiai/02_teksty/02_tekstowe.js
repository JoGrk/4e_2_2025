// 1. Zapisz funkcję includes, która zwraca prawdę jeśli tekst będący jej drugim parametrem występuje w tekście, który jest jej pierwszym parametrem

function includes(text1, textFind){
    return text1.indexOf(textFind)>=0
}
console.log(includes('Na koszulce Joachima jest napisane crabito gatito', 'jest'))

// 2. Mutowalne dane to dane, którym w czasie ich istnienia możemy zmieniać części składowe - można zmieniać je po utworzeniu. Czy tablice są mutowalne? Czy napisy są mutowalne?

//   A. utwórz funkcję changeFirst z jednym parametrem, która zmienia pierwszy element swojego parametru na znak @
// B. Zadeklaruj listę (tablicę) zawierającą dowolne znaki oraz zadeklaruj dowolny tekst
// C. Wypisz efekt działania funkcji changeFirst  na  liście (tablicy)  oraz na tekście
// 3. Przygotuj funkcję changeFirstText, która zwraca tekst ze zmienionym pierwszym znakiem na znak @

// 5. Czy metoda replace zamienia tylko pierwsze wystąpienie swojego parametru drugim parametrem, czy wszystkie? (tekst.replace(t1, t2) ). Przygotuj eksperyment, który to sprawdzi.

// 6 napisz funkcję toClause, która przyjmuje jako parametr tekst i zwraca tablicę, w której każdy każde zdanie (tekst oddzielony kropką) jest osobnym elementem tej tablicy

// 7. zadeklaruj tekst o podanej treści i następnie wypisz tekst przekształcony zgodnie z jego treścią:

// A. "powiększ mnie!"
// B. 'ZAPISZ MNIE MAŁYMI LITERAMI'
// C. "!@#$ wytnij te dziwne znaki na początku"
// D. 'sprawdź, czy zawieram słowo "czy" '
// E. "podziel, ten, tekst, od, przecinków" (zwróć tablicę zawierającą słowa między przecinkami jako jej osobne elementy)
// 8. 

// A.  Przygotuj funkcję server, która dla adresu e-mail, który otrzyma jako parametr, zwróci adres serwera (część po znaku @)
// B. zmodyfikuj funkcję server tak, aby nazwa serwera była zapisana wielkimi literami
// C.zmodyfikuj funkcję server tak, aby w przypadku, gdy parametr nie zwierał @ zwracała tekst "to nie jest prawidłowy adres e-mail).
// 9. utwórz funkcję initials, która przyjmuje jako parametr tekst zawierający imię i nazwisko (np. "Jan Kowalski") i zwraca inicjały, czyli pierwszą literę imienia i pierwszą literę nazwiska, zapisaną małymi literami

// 10. zmodyfikuj poprzednią funkcję tak, aby w przypadku, gdy osoba ma dwa imiona, do inicjału było brane tylko pierwsze imię