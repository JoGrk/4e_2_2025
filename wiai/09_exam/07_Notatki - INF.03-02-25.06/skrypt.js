const btnArrayE = document.querySelectorAll('ul button')
const addBtnE = document.getElementById('add-btn')
const addTaskE = document.getElementById('addTask')
const ulE = document.querySelector('main ul')

btnArrayE.forEach(btnE=>{
    btnE.addEventListener('click',e=>{
        btnE.parentElement.style.textDecoration='line-through'
    })
})

addBtnE.addEventListener('click', e=>{
    let liE=document.createElement('li')
    liE.textContent=addTaskE.value
    let finishBtnE=document.createElement('button')
    finishBtnE.textContent='Wykonane'

    liE.appendChild(finishBtnE)
    ulE.appendChild(liE)

    finishBtnE.addEventListener('click',e=>{
        liE.style.textDecoration='line-through'
    })
})

