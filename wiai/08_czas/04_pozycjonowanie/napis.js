const pE=document.querySelector('.animation')


let speed=10
let position = 0;
pE.style.left = '10px'

let windowInterval =setInterval(() => {
    // let a=parseInt(pE.style.left)
    // pE.style.left=`${speed+a}px`

    if(position>window.innerWidth-pE.offsetWidth || position<0){
        speed = -speed 
    }
    
    position+=speed;
    pE.style.left=`${position}px`
    if(position>window.innerWidth){
        clearInterval(windowInterval)
    }
    
}, 75); 