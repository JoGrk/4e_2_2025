const blurE = document.getElementById('blur')
const sepiaE = document.getElementById('sepia')
const negativeE = document.getElementById('negative')

const btn1E = document.querySelector('.first button')
const btn4E = document.querySelector('.fourth button')
const btnColourE = document.querySelector('#colour')
const btnBWE = document.querySelector('#b-w')
const btnFruitE = document.querySelector('#fruit')


const img1E = document.querySelector('.first img')
const img2E = document.querySelector('.second img')
const img3E = document.querySelector('.third img')
const img4E = document.querySelector('.fourth img')


const input3E = document.querySelector('#imgEffect3')
const input4E = document.querySelector('#imgEffect4')

btn1E.addEventListener('click',e=>{
    if(blurE.checked){
        img1E.style.filter = 'blur(6px)'

    }
    else if(sepiaE.checked){
        img1E.style.filter = 'sepia(100%)'
    }
    else if(negativeE.checked){
        img1E.style.filter = 'invert(100%)'
    }
})

btnColourE.addEventListener('click',e=>{
    img2E.style.filter = 'none'
})

btnBWE.addEventListener('click', e=>{
    img2E.style.filter = 'grayscale(100%)'
})

btnFruitE.addEventListener('click', e=>{
    img3E.style.filter = `opacity(${input3E.value}%)`
})

btn4E.addEventListener('click',e=>{
    img4E.style.filter = `brightness(${input4E.value}%)`
})




