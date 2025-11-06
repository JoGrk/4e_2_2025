const redE = document.querySelector('#red')
const blueE = document.querySelector('#blue')
const greenE = document.querySelector('#green')
const mainE = document.querySelector('main')

redE.addEventListener('click', e=>{
    mainE.style.color='red'
})
blueE.addEventListener('click', e=>{
    mainE.style.color='blue'
})
greenE.addEventListener('click', e=>{
    mainE.style.color='green'
})