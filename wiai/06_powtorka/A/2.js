const mainImgE = document.querySelector('main img')
const navImgAllE  = document.querySelectorAll('nav img')

navImgAllE.forEach(imgE=>{
    imgE.addEventListener('click', e=>{
        mainImgE.src=imgE.src
    })
})