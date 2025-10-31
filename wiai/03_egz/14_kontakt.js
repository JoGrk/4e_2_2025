const button = document.querySelector('button')
const sendE = document.querySelector('#send')

button.style.backgroundColor='red'
sendE.style.backgroundColor='green'

const nameE = document.querySelector('#name')
const surnameE = document.querySelector('#surname')
const mailE = document.querySelector('#mail')
const serviceE = document.querySelector('#service')
const copyE = document.querySelector('#copy')
const resultE = document.querySelector('#result')
const formE = document.querySelector('form')

formE.addEventListener('submit', e=>{
    e.preventDefault()
    resultE.innerHTML=`${nameE.value} ${surnameE.value} <br>
        ${mailE.value.toLowerCase()} <br>
            Usułga:${serviceE.value}`
    if(copyE.checked){
        resultE.innerHTML+=`<br>Wysłano kopię wiadomości`
    }
})

