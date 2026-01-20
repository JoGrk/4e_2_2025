const imagesArray = ['img1.jpg', 'img2.jpg', 'img3.jpg', 'img4.jpg', 'img5.jpg', 'img6.jpg',]
const ulE = document.querySelector('ul')
const randomE = document.querySelector('#random')
const deleteE = document.getElementById('delete')

imagesArray.forEach(element =>{
    let liE = document.createElement('li')
    // let aE = document.createElement('a')
    liE.innerHTML=`<a href="${element}" target="_blank">${element}</a>`
    ulE.appendChild(liE)
})

randomE.addEventListener('click', e=>{
    let randomIndex = drawRandom(imagesArray.length)
    // console.log(randomIndex)
    let sectionE=document.createElement('section')
    sectionE.classList.add('images')
    let h3E=document.createElement('h3')
    h3E.textContent=`${randomIndex}`
    let imgE=document.createElement('img')
    imgE.src=imagesArray[randomIndex]
    sectionE.appendChild(h3E)
    sectionE.appendChild(imgE)
    document.querySelector('main').appendChild(sectionE)
})

function drawRandom(max){
    let draw = Math.random()*max
    return Math.floor(draw)
}

// if(docume.hasChildNodes()){
//     deleteE.addEventListener('click', e=>{
//         document.querySelector('main').removeChild(document.querySelector('main')[0])
//     })
// }