let tab=['Wiśniewski','Kwaśniewski','Duda']
console.log(tab[1])
console.log(tab[2])

let imie = [7, 4, 9, 14, 63,-52]

console.log(imie)

for(let el of imie){
   console.log(`Filip ${el}`) 
}


let suma = 0
for(let el of imie){
    suma=el+suma
}
console.log(suma)
