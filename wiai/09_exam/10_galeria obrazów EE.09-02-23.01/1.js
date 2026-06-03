const btnPrevE = document.querySelector('#previous')
const btnNextE = document.querySelector('#next')
const bigImgE = document.querySelector('#bigImg')
const miniaturesE = document.querySelector('#miniatures')
const firstImg = document.querySelector('#firstImg')
const secondImg = document.querySelector('#secondImg')
const thirdImg = document.querySelector('#thirdImg')
const fourthImg = document.querySelector('#fourthImg')
const fifthImg = document.querySelector('#fifthImg')

let imgId = 1

btnNextE.addEventListener('click', e => {
    if (imgId == 5) {
        imgId = 1
    } else {
        imgId++
    }
    bigImgE.src = `${imgId}.jpg`
})

btnPrevE.addEventListener('click', e => {
    if (imgId == 1) {
        imgId = 5
    } else {
        imgId--
    }
    bigImgE.src = `${imgId}.jpg`
})

// firstImg.addEventListener('click', e => {
//     imgId = 1
//     bigImgE.src = `${imgId}.jpg`
// })

// secondImg.addEventListener('click', e => {
//     imgId = 2
//     bigImgE.src = `${imgId}.jpg`
// })

// thirdImg.addEventListener('click', e => {
//     imgId = 3
//     bigImgE.src = `${imgId}.jpg`
// })

// fourthImg.addEventListener('click', e => {
//     imgId = 4
//     bigImgE.src = `${imgId}.jpg`
// })

// fifthImg.addEventListener('click', e => {
//     imgId = 5
//     bigImgE.src = `${imgId}.jpg`
// })

const miniImgAllE = document.querySelectorAll('.mini')

miniImgAllE.forEach( (imgE, index) => {
    imgE.addEventListener('click', e=>{
        imgId = index+1 // bo liczymy w tablicy od zera
        bigImgE.src = `${imgId}.jpg`
    })
})