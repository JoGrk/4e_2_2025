const m2E = document.querySelector('#m2')
const sizeE = document.querySelector('#size')
const discountE = document.querySelector('#discount')
const formE = document.querySelector('form')
const resultE = document.querySelector('#result')

formE.addEventListener('submit', e=>{
    e.preventDefault()
    let m2 = Number(m2E.value)
    let cost = Number(sizeE.value)*m2

    let selectedE = document.querySelector('input[name="work"]:checked')
    cost = selectedE.value*cost

    if(discountE.checked){
        cost=cost*0.95
    }
    if(m2<10){
        cost=cost*1.1
    }
    else if(m2>50){
        cost=cost*0.9
    }
    resultE.textContent=cost
})