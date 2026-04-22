const btnE = document.querySelectorAll('button')
const rightE = document.querySelector('.right')
const selectE=document.querySelector('select')
const sizeE = document.querySelector('#size')
const frameE = document.querySelector('#frame')
const imgE = document.querySelector('img')
const ulE = document.querySelector('ul')
const listTypeE = document.querySelectorAll('input[name="list-type"]')

btnE.forEach(element => {
    element.addEventListener('click', e=>{
        rightE.style.backgroundColor=element.textContent
    })
});

selectE.addEventListener('change', e=>{
    rightE.style.color=selectE.value
})

sizeE.addEventListener('blur',e=>{
    rightE.style.fontSize=sizeE.value
})

frameE.addEventListener('change', e=>{
    if(frameE.checked){
        imgE.style.border= '1px white solid'
    }
    else{
        imgE.style.border= 'none'
    }
})

listTypeE.forEach(element =>{
    element.addEventListener('click', e=>{
        ulE.style.listStyleType = element.value
    })
})

const discE = document.querySelector('#disc')

discE.addEventListener('click', e=>{
    ulE.style.listStyleType = 'disc'
})