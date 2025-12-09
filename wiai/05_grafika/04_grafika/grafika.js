const imgNavE = document.querySelectorAll('nav img')
const imgMainE = document.querySelectorAll('main img')
const asidePE=document.querySelectorAll('aside p')

imgNavE.forEach((imgE,index)=>{
    imgE.addEventListener('click', e=>{
        imgE.classList.toggle('border')

        if(imgE.classList.contains('border')){
            imgMainE[index].src=imgE.src
            asidePE[index].style.display='block'
        }
        else{
            imgMainE[index].src=''
            asidePE[index].style.display='none'
        }
    })
})