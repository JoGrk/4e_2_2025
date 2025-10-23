const passwordE = document.getElementById('password')
const btnPassE = document.getElementById('btnpass')
const resultE = document.getElementById('result')

btnPassE.addEventListener('click',(e)=>{
    let password=passwordE.value
    if(password.length==0){
        resultE.textContent='WPISZ HASLO!'
        resultE.style.color='red'

    }else if(password.length >= 7 && isDigital(password)){
        resultE.textContent='Haslo jest dobre'
        resultE.style.color='green'
    }
    else if(password.length<4){
        resultE.textContent='Haslo jest słabe'
        resultE.style.color='yellow'
    }
    else{
        resultE.textContent='Średnie'
        resultE.style.color='blue'
    }
    
    console.log(password);

})

function isDigital(text){
    const reg = /[0-9]/
    // console.log(reg.test)
    return reg.test(text)
}

