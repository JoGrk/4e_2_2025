const n1E = document.querySelector('#n1')
const n2E = document.querySelector('#n2')
const n3E = document.querySelector('#n3')
const btnE = document.querySelector('button')
const resultE = document.querySelector('#result')

btnE.addEventListener('click', (e)=>{
    let n1 = parseFloat(n1E.value)
    let n2 = parseFloat(n2E.value)
    let n3 = parseFloat(n3E.value)
    if(isNaN(n1) || isNaN(n2) || isNaN(n3)){
        alert('wpisz poprawne dane')
    }
    else{
        resultE.textContent=`srednia wynosi ${(n1+n2+n3)/3}`
    }
})