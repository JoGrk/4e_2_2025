// C. Po kliknięciu na przycisk paragraf jest formatowany czcionką pogrubioną lub zwykłą

const btnE = document.querySelector('button')
const selectedE = document.querySelector('select')
const pE = document.querySelector('p')

// btnE.addEventListener('click', (e)=>{
//     if(selectedE.value == 'strong'){
//         pE.style.fontWeight = 'bold'
//     }
//     else{
//         pE.style.fontWeight = 'normal'
//     }
// })

selectedE.addEventListener('change', (e)=>{
    if(selectedE.value == 'strong'){
        pE.style.fontWeight = 'bold'
    }
    else{
        pE.style.fontWeight = 'normal'
    }
})

