const prevBtnE = document.querySelector('.left button')
const nextBtnE = document.querySelector('.right button')
const imgMidE = document.querySelector('.mid img')

nextBtnE.addEventListener('click', e=>{
    let current = imgMidE.src
    current = current.slice(-5,-4)
    if(current=='7'){
        current=1
    }
    else{
        current++
    }
    imgMidE.src = `${current}.jpg`
})

prevBtnE.addEventListener('click', e=>{
    let current = imgMidE.src
    current = current.slice(-5,-4)
    if(current=='1'){
        current=7
    }
    else{
        current--
    }
    imgMidE.src = `${current}.jpg`
})