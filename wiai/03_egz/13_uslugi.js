const nameE = document.querySelector('#name')
const surnameE = document.querySelector('#surname')
const serviceE = document.querySelector('#service')
const termsE = document.querySelector('#terms')
const formE = document.querySelector('form')
const resultE = document.querySelector('#result')

formE.addEventListener('submit', e=>{
    e.preventDefault()
    if(!termsE.checked){
        resultE.textContent='Musisz zapoznać się z regulaminem'
        resultE.style.color="red"
    }
    else{
        resultE.innerHTML=`${nameE.value.toUpperCase()} 
        ${surnameE.value.toUpperCase()} <br> 
        Treść twojej sprawy: ${serviceE.value} <br>
        Na podany e-mail zostanie wysłana oferta.  `
        resultE.style.color='black'
    }
})