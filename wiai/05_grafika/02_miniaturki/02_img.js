// const oneE = document.querySelector('nav img')
const mainE = document.querySelector('main img')
const allE = document.querySelectorAll('nav img')

// oneE.addEventListener('click',e=>{
//     mainE.src=oneE.src

// })

allE.forEach(imgE=>{
    imgE.addEventListener('click',e=>{
        mainE.src=imgE.src
    })
})

let arrayImg = ["jeden.jpg", "dwa.jpg", "trzy.jpg", "cztery.jpg", "pięć.jpg", "sześć.jpg"]

mainE.addEventListener('click', e=>{
    let number = Math.floor(Math.random()*arrayImg.length)
    mainE.src = arrayImg[number]
})