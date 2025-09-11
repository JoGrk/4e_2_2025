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
        return ` `
    }
}
 

// 3. Utwórz funkcję, która sprawdzi, czy w napisie podanym jej jako parametr jest znak @, a jeśli tak, to wyświetli tekst "małpa została znaleziona na pozycji n" (gdzie n to pozycja) oraz "nie ma małpy" w przeciwnym wypadku

 

// 4. Napisz funkcję firstFive, która zwraca pięć pierwszych liter z tekstu, który jej parametrem (użyj substr)

// 5. Napisz funkcję lastFive, która zwraca ostatnie pięć liter z tekstu, który jest jej parametrem (użyj substring)

// 6. Zapisz funkcję midFive, która zwraca środkowe pięć znaków z tekstu, który jest jej parametrem (użyj slice)