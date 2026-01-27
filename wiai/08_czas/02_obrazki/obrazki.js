let images = ['img1.jpg','img2.jpg','img3.jpg','img4.jpg','img5.jpg','img6.jpg']

const mainImgE = document.querySelector('main img')

function drawImage(){
    let i = Math.random()*images.length
    i = Math.floor(i)
    // console.log(i)
    mainImgE.src = images[i]
}
setInterval(drawImage,2000)
// drawImage()


