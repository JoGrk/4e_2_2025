const formE = document.querySelector('header form')
const greenE = document.querySelector('#green')
const darkE = document.querySelector('#dark')
const lightE = document.querySelector('#light')
const mainE = document.querySelector('main')

formE.addEventListener('submit', e=>{
    e.preventDefault()
    if(greenE.checked){
        mainE.style.color='green'
        mainE.style.backgroundColor='lightgreen'
    }
})
