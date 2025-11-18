const txtE = document.querySelector('#txt')
const msgE = document.querySelector('#msg')
const btnE = document.querySelector('button')
const pE = document.querySelector('#p')

txtE.addEventListener('input', e=>{
    // console.log(txtE.value)
    let len = txtE.value.length
    msgE.textContent=len
    if (len > 100){
        msgE.textContent += " za dużo znaków, tekst zostanie ucięty do 100 "
        txtE.className='red'
    }
    else if(len >90){
        txtE.className='orange'
    }
    else{
        txtE.className='grey'
    }
})

btnE.addEventListener('click',e=>{
    if(txtE.value.length <= 100){
        pE.textContent = `Twoje zdarzenie: ${txtE.value}`
    }
    else{
        pE.textContent=`Twoje zdarzenie tekst obcięty do 100 znaków: ${txtE.value.slice(0,100)}`
    }
})
