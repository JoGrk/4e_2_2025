const surnameE = document.querySelector('#surname')
const surnameErrorE = document.querySelector('#surname-error')
const emailE = document.querySelector('#email')
const emailErrorE = document.querySelector('#email-error')
const postalcodeE = document.querySelector('#postal-code')
const postalcodeErrorE = document.querySelector('#postal-Error')
const addressE = document.querySelector('#address')
const addressErrorE = document.querySelector('#address-e rror')
const formE = document.querySelector('form')

console.log(surnameE)

surnameE.addEventListener('input', e=>{
    if(surnameE.length < 3){
        surnameErrorE.textContent = 'Nazwisko z co najmniej 3 znakami'
    }
    else{
        surnameErrorE.textContent = ''
    }
})


console.log(surnameE.value)
emailE.addEventListener('input',e=>{
    const reg = /^[a-z.-_]{4,}@staszic.eu/i
    if(reg.test(emailE.value)){
        emailErrorE.textContent =''
    }
    else{
        emailErrorE.textContent='Email mus być w domenie staszic.eu'
    }
})
postalcodeE.addEventListener('input',e=>{
    const ahh = /^[0-9]{2}-[0-9]{3}$/
    if (ahh.test(postalcodeE.value)){
        postalcodeErrorE.textContent=''
    }
    else{
        postalcodeErrorE.textContent='numer wpisz to jest kod pocztowy'
    }
})

addressE.addEventListener('input',e=>{
    const wyr = /^[a-z]{3}.*\d$/
    if(wyr.test(addressE.value)){
        addressErrorE.textContent=''
    }
    else{
        addressErrorE.textContent='Adres powinien mieć trzy litery i kończyć się cyfrą'
    }
})
    



formE.addEventListener('submit',e=>{
    e.preventDefault()
    if(surnameE.value.length < 3){
        surnameErrorE.textContent = 'Nazwisko z co najmniej 3 znakami'
    }
    else{
        surnameErrorE.textContent = ''
    }

})
console.log(surnameE.value)