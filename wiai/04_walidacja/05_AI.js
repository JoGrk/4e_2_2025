const nameE = document.querySelector('#name')
const passwdE = document.querySelector('#passwd')
const errorNameE = document.querySelector('#errorName')
const errorPasswdE = document.querySelector('#errorPasswd')

nameE.addEventListener('input', e=>{
    errorNameE.textContent=''
    errorNameE.style.color='black'

    if(nameE.value.length < 3){
        errorNameE.textContent='Za krótka nazwa'
        errorNameE.style.color='red'
    }

    if(nameE.value.indexOf(' ')>= 0){
        errorNameE.textContent+='Nazwa nie może zawierać spacji'
        errorNameE.style.color='orange'
    }
    

})

passwdE.addEventListener('input',e=>{
    errorPasswdE.textContent=''

    if(passwdE.value.length<8){
        errorPasswdE.textContent='Za krótkie'
        errorPasswdE.style.color='red'
    }
    else if(!isDigit(passwdE.value)){
        errorPasswdE.textContent='Brak cyfry'
        errorPasswdE.style.color='orange'
    }
    else{
        errorPasswdE.textContent='Hasło OK'
        errorPasswdE.style.color='green'
    }
})
function isDigit(text){
    return (
        text.indexOf('0')>=0 || 
        text.indexOf('1')>=0 || 
        text.indexOf('2')>=0 || 
        text.indexOf('3')>=0 || 
        text.indexOf('4')>=0 || 
        text.indexOf('5')>=0 || 
        text.indexOf('6')>=0 || 
        text.indexOf('7')>=0 || 
        text.indexOf('8')>=0 || 
        text.indexOf('9')>=0
    )
}