const btnE = document.querySelector('button')

// const hairShortE = document.getElementById('hair-short')
// const hairMidE = document.getElementById('hair-mid')
// const hairHalfLongE = document.getElementById('hair-halflong')
// const hairLongE = document.getElementById('hair-long')
const resultE = document.getElementById('result')



btnE.addEventListener('click', e=>{
    let price = 0

    // if(hairShortE.checked){
    //     price = 15
    // }else if(hairMidE.checked){
    //     price = 20
    // }else if(hairHalfLongE.checked){
    //     price = 30
    // }else if (hairLongE.checked) {
    //     price = 40
    // }

  
    price = document.querySelector('input[name="hair"]:checked').value

    if (price > 0) {
        resultE.textContent=`cena promocyjna: ${price}`
    }
})