const btnE = document.querySelector('button')
const blueE = document.querySelector('#blue')
const orangeE = document.querySelector('#orange')
const purpleE = document.querySelector('#purple')
const pE = document.querySelector('p')
const checkE = document.querySelector('#check')
const imgE = document.querySelector('img')

const postalCodeE = document.querySelector('#postalcode')
const formE = document.querySelector('form')

const resultE = document.querySelector('#result')

btnE.addEventListener('click', e=>{
    if(blueE.checked){
        // console.log('niebieski')
        pE.style.color='blue'
        pE.style.backgroundColor='lightblue'
    }
    if(orangeE.checked){
        // console.log('pomarańczowy')
        pE.style.color='orange'
        pE.style.backgroundColor='salmon'
    }
        if(purpleE.checked){
        // console.log('fioletowy')
        pE.style.color='purple'
        pE.style.backgroundColor='magenta'
    }
});

checkE.addEventListener('change',e=>{
    
    if(checkE.checked){
        imgE.classList.add('emp')
    }
    else{
        imgE.classList.remove('emp')
    }
})

formE.addEventListener('submit', e=>{
    e.preventDefault()
    console.log(3434);
    const reg = /^[0-9]{2}-[0-9]{3}$/
    // console.log(postalCodeE.value)
    if(reg.test(postalCodeE.value)){
        resultE.textContent='dziękujemy za podanie danych'
    }
    else{
        resultE.textContent='wpisz poprawny kod pocztowy'
    }
})
