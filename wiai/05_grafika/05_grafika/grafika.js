const imgNavE = document.querySelectorAll('nav img')
const leftBtnE = document.querySelector('#left')
const rightBtnE = document.querySelector('#right')
const imgMainE = document.querySelector('main img')

let imgIndex = 0


leftBtnE.addEventListener('click', e=>{
    if(imgIndex>0){
        imgIndex--
        imgMainE.src=imgNavE[imgIndex].src
    }
})

rightBtnE.addEventListener('click', e=>{
    if(imgIndex<(imgNavE.length-1)){
        imgIndex++
        imgMainE.src=imgNavE[imgIndex].src
    }
})

imgNavE.forEach((imgE, idx)=>{
    imgE.addEventListener('click',e=>{
        imgMainE.src=imgE.src
        imgIndex=idx
    })
})