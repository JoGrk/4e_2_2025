const imgNavE = document.querySelectorAll('nav img')
const leftBtnE = document.querySelector('#left')
const rightBtnE = document.querySelector('#right')
const imgMainE = document.querySelector('main img')
const imgLeftE =document.querySelectorAll('.left img')
const imgRightE =document.querySelectorAll('.right img')

let imgIndex = 0


leftBtnE.addEventListener('click', e=>{
    if(imgIndex>0){
        imgIndex--
        imgMainE.src=imgNavE[imgIndex].src
    }
    hiddenImg()
})

rightBtnE.addEventListener('click', e=>{
    if(imgIndex<(imgNavE.length-1)){
        imgIndex++
        imgMainE.src=imgNavE[imgIndex].src
    }
    hiddenImg()
})

imgNavE.forEach((imgE, idx)=>{
    imgE.addEventListener('click',e=>{
        imgMainE.src=imgE.src
        imgIndex=idx
        hiddenImg()
    })
})

function hiddenImg(){
    imgLeftE.forEach((imgE, idx)=>{
        if(idx>imgIndex){
            imgE.style.display='inline-block'
        }
        else{
            imgE.style.display='none'
        }
    })  
    imgRightE.forEach((imgE, idx)=>{
        if(idx<imgIndex){
            imgE.style.display='inline-block'
        }
        else{
            imgE.style.display='none'
        }
    })     
}

