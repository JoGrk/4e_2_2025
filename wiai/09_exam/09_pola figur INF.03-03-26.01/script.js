const mainImgE = document.querySelector('#mainImg')
const firstSubE = document.querySelector('#firstSub')
const secondSubE = document.querySelector('#secondSub')
const btnE = document.querySelector('button')
const sideAE = document.querySelector('#sideA')
const sideBE = document.querySelector('#sideB')
const resultE = document.querySelector('#result')

// let shape = 1 //1-Trójkąt,2-prostokąt

// firstSubE.addEventListener('click',e=>{
//     mainImgE.src = '1d.bmp' 
//     shape = 1
   
// })

// secondSubE.addEventListener('click', e=>{
//     mainImgE.src = '2d.bmp'
//     shape = 2
   
// })

// btnE.addEventListener('click', e=>{
//     if(shape == 2){
//         resultE.textContent = sideAE.value*sideBE.value
//     }
//     else{
//         resultE.textContent = sideAE.value*sideBE.value/2
//     }
// })


firstSubE.addEventListener('click',e=>{
    mainImgE.src = '1d.bmp'  
})

secondSubE.addEventListener('click', e=>{
    mainImgE.src = '2d.bmp'
})

btnE.addEventListener('click', e=>{
    let file = mainImgE.src.slice(-6)
    console.log(file)
    if(file == '2d.bmp'){
        resultE.textContent = sideAE.value*sideBE.value
    }
    else{
        resultE.textContent = sideAE.value*sideBE.value/2
        }
})