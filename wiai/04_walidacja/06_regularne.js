const wyr1 = /[0-9]{3}/i

console.log(wyr1.test('345'))
console.log(wyr1.test('34a5'))

const wyr2 = /^[0-9]{3}$/i

console.log(wyr2.test('1234'))
console.log(wyr2.test('123'))

const wyr3 = /^[0-9]{3}.*[0-9]{3}$/i

console.log(wyr3.test('345a345'))
console.log(wyr3.test('345a34'))
console.log(wyr3.test('348344'))

const wyr4 = /^[a-zA-Z0-9]{4,}$/

console.log(wyr4.test('443uy'))
console.log(wyr4.test('44'))
console.log(wyr4.test('4437575'))

console.log('---5. wyłącznie małe lub wielkie litery a, b, d lub f')

const wyr5 = /^[abdf]*$/i

console.log(wyr5.test('Abdf'))
console.log(wyr5.test('abdfx'))


console.log('6. na początku nie może być litery x ani litery z');

const wyr6 = /^[^xz]/i
console.log(wyr6.test('xsss343'));
console.log(wyr6.test('sss343'));

console.log('7. kod pocztowy')

const wyr7 = /^[0-9]{2}-[0-9]{3}$/

console.log(wyr7.test('89-110'))
console.log(wyr7.test('9-110'))

console.log('8. można wpisać tylko cyfry')

const aha=/^[0-9]*$/

console.log(aha.test('123123'))
console.log(aha.test('123123sd&'))

console.log('9. we wzorcu musi wystąpić znak / (np. AC/DC)')

const wyr9 = /[/]/

console.log(wyr9.test('/'))
console.log(wyr9.test('AC/DC'))
console.log(wyr9.test('ACDC'))

console.log('10. we wzorcu musi być kropka');

const wyr10 = /\./

console.log(wyr10.test('te.t'));
console.log(wyr10.test('tet'));

console.log('11. we wzorcu musi być na końcu ciąg znaków: kropka i od 2 do 3 liter od a do z (duże też pasują)');

const wyr11=/\.[a-z]{2,3}$/i

console.log(wyr11.test('asd.as'));
console.log(wyr11.test('asd.asdf'));

// adres e-mail znaki(litera, cyfra,_.-), małpa, znaki alfanumeryczne razem z _ kroka i od 2 do 3 znaków (liter bez _)
const wyr12 = /^[a-z0-9_.-]+@[0-9a-z_.]+\.[a-z]{2,3}$/i

console.log(wyr12.test('sdsgdi@sdsd.sd'))
console.log(wyr12.test('sdsgdisdsd.sd'))
console.log(wyr12.test('sdsgdi@sds!d.sd'))

const wyr13 = /^[a-z]{2,}\s[a-z]{2,}/i

console.log(wyr13.test('ad da'))
console.log(wyr13.test('addafd'))