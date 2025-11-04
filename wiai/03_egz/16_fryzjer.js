const shortE = document.querySelector('#short')
const mediumE = document.querySelector('#medium')
const halfLongE = document.querySelector('#half-long')
const longE = document.querySelector('#long')
const resultE = document.querySelector('#result')
const formE = document.querySelector('form')

formE.addEventListener('submit', e=>{
    e.preventDefault()
//    let cost 
//    if(shortE.checked){
//     cost = 25
//    }
//    else if(mediumE.checked){
//     cost = 30
//    }
//    else if(halfLongE.checked){
//     cost = 40
//    }
//    else if(longE.checked){
//     cost = 50
//    }
    
let costE=document.querySelector('input:checked')
   
   resultE.textContent = `Cena promocyjna:${costE.value}zł`
})

