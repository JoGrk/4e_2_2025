let taskArray=[ 'gotowanie', 'zakupy', 'nauka', 'koszenie', 'siłownia', 'hobby', 'odkurzanie', 'czytanie ']

const imagesArray = ['img1.jpg', 'img2.jpg', 'img3.jpg', 'img4.jpg', 'img5.jpg', 'img6.jpg']

const btnE = document.querySelector('nav button')
const mainE=document.querySelector('main')
const formE = document.querySelector('form')
const taskE = document.getElementById('task')
const asideE = document.querySelector('aside')

imagesArray.forEach(image=>{
    addImage(image)
})

const btnImgE = document.querySelector('#btn-img')
btnImgE.addEventListener('click', e=>{
     let idx = drawIndex(imagesArray.length)
    addImage (imagesArray[idx])

})

function addImage(image){
    let imgE = document.createElement('img')
    imgE.classList.add('image')
    imgE.src = image
    asideE.appendChild(imgE)
}

btnE.addEventListener('click', e=>{
    let idx = drawIndex(taskArray.length)
    addTask(taskArray[idx])
})

formE.addEventListener('submit',e=>{
    e.preventDefault()
    if(taskE.value.length>2){
        addTask(taskE.value)
        taskE.value=''
    }
})

function drawIndex(max){
    return(Math.floor(Math.random()*max))
}

function addTask(task){
    const divE=document.createElement('div')
    divE.classList.add('task')
    const pE=document.createElement('p')
    pE.textContent=task
    divE.appendChild(pE)
    mainE.appendChild(divE)
}

