// 1. licznik (h1) odliczający co sekundę od 10 w dół, po uzyskaniu 0, odliczanie jest przerywane i wyświetlany napis BUM

const h1E = document.querySelector('h1');

let count = 10;


let countDown = setInterval(()=>{
    h1E.textContent=count
    count--
    if(count==-1){
        h1E.textContent = 'BUM'
        clearInterval(countDown)
    }
}, 1000)



// 2. Po 10 sekundach jest wyświetlana na stronie sekcja główna

const sectionE = document.querySelector('main section');

setTimeout(()=>{
    sectionE.style.display='block'
},10000)


// 3. W bloku bocznym wyświetlane są obrazy, do których ścieżki (nazwy) s,a zapisane  tablicy. Obrazki powinny być tworzone co 2 sekundy.

const asideE = document.querySelector('aside');

const images = ['img1.jpg', 'img2.jpg', 'img3.jpg', 'img4.jpg', 'img5.jpg', 'img6.jpg'];

// images.forEach(img =>{
//     let imgE = document.createElement('img')
//     imgE.src=img
//     setInterval(()=>{
//         asideE.appendChild(imgE)
//     }, 1000)
// })
let index = 0
const imgInterval =setInterval(()=>{
    let imgE = document.createElement('img')
    imgE.src=images[index]
    asideE.appendChild(imgE)
    index++
    if (index>=images.length){
        clearInterval(imgInterval)
    }
},1000)