const skrypt1SpanE = document.querySelector('.three span')


for(let i = 1; i<=10;i++){
    let imgE = document.createElement('img')
    imgE.src = `${i}.jpg`
    imgE.className = 'wzory'
    imgE.title = i
    skrypt1SpanE.appendChild(imgE)
}

const oneE=document.querySelector('.one')
const twoE=document.querySelector('.two')
const threeE=document.querySelector('.three')
const btnColorE=document.querySelector('#btnColor')
const btnShapeE=document.getElementById('btnShape')
const btnPatternE=document.getElementById('btnPattern')

btnColorE.addEventListener('mouseover',e=>{
    oneE.style.display="block"
    twoE.style.display="none"
    threeE.style.display="none"
    btnColorE.style.backgroundColor="Salmon"
    btnPatternE.style.backgroundColor="Crimson"
    btnShapeE.style.backgroundColor="Crimson"
})

btnShapeE.addEventListener('mouseover',e=>{
    twoE.style.display="block"
    oneE.style.display="none"
    threeE.style.display="none"
    btnColorE.style.backgroundColor="Crimson"
    btnPatternE.style.backgroundColor="Salmon"
    btnShapeE.style.backgroundColor="Crimson"
})

btnPatternE.addEventListener('mouseover',e=>{
    oneE.style.display="none"
    twoE.style.display="none"
    threeE.style.display="block"
    btnColorE.style.backgroundColor="Crimson"
    btnPatternE.style.backgroundColor="Crimson"
    btnShapeE.style.backgroundColor="Salmon"
})

