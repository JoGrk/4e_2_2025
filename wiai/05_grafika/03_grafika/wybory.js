const imgAsideE = document.querySelectorAll('aside img')

imgAsideE.forEach(imgE=>{
    imgE.addEventListener('click',e=>{
        imgE.classList.toggle('border')
    })
})
