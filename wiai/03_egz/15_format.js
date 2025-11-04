const resultE = document.querySelector('#result')
const percentE = document.querySelector('#percent')
const textstyleE = document.querySelector('#textstyle')
const btnRedE = document.querySelector('#btn-red')
const btnGreenE = document.querySelector('#btn-green')
const btnBlueE = document.querySelector('#btn-blue')

btnRedE.addEventListener('click', e=>{
    resultE.style.color="red"
})

btnGreenE.addEventListener('click', e=>{
    resultE.style.color="green"
})

btnBlueE.addEventListener('click', e=>{
    resultE.style.color="blue"
})

textstyleE.addEventListener('change', e=>{
    resultE.style.fontStyle=textstyleE.value
})

percentE.addEventListener('change', e=>{
    resultE.style.fontSize=`${percentE.value}%`
})