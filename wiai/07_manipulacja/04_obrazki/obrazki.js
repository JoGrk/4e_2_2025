const imagesArray = ['img1.jpg', 'img2.jpg', 'img3.jpg', 'img4.jpg', 'img5.jpg', 'img6.jpg',]
const ulE = document.querySelector('ul')

imagesArray.forEach(element =>{
    let liE = document.createElement('li')
    // let aE = document.createElement('a')
    liE.innerHTML=`<a href="${element}" target="_blank">${element}</a>`
    ulE.appendChild(liE)
})