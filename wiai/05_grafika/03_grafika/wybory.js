const imgAsideE = document.querySelectorAll('aside img')
const imgMainE = document.querySelectorAll('main img')
c

imgAsideE.forEach((imgE, idx) =>{
    imgE.addEventListener('click',e=>{
        imgE.classList.toggle('border')     
    })   
})

