let images = ['img1.jpg','img2.jpg','img3.jpg','img4.jpg','img5.jpg','img6.jpg']
const sectionE = document.querySelector('main section')
const h1E = document.querySelector('nav h1')
const asideE=document.querySelector('aside')

setTimeout(() => {
    sectionE.style.display = 'block'
}, 10000);

let count = 10
function countDown(){
    h1E.textContent=count
    count--
    if(count ==0){
        h1E.textContent='BUM'
        clearInterval(interval)
    }
}

// const interval = setInterval(countDown,1000)

// images.forEach(img => {
//     const imgE=document.createElement('img')
//     imgE.src=img
//     setTimeout(() => {
//         asideE.appendChild(imgE)
//     }, 1000);
// });





let imgIndex = 0;

const interval2 = setInterval(() => {
    if (imgIndex < images.length) {
        const imgE = document.createElement('img');
        imgE.src = images[imgIndex];
        asideE.appendChild(imgE);
        imgIndex++;
    } else {
        clearInterval(interval2);
    }
}, 1000);
