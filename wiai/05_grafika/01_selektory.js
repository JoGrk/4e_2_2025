const urlE = document.querySelector('input[type="url"]')
const imgE = document.querySelector('aside img')
const btnE = document.querySelector('button')
const pAsideE = document.querySelector('aside p')
const oneE = document.querySelector('.one')
const twoE = document.querySelector('.two')
const threeE = document.querySelector('.three')

urlE.addEventListener('blur', e=>{
    imgE.src=urlE.value
})

btnE.addEventListener('click',e=>{
    let hue=document.querySelector('input[name="color"]:checked').value
    // pAsideE.style.color=`hsl(${hue}, 80, 50)`
    pAsideE.style.color=`hsl(${hue},100%,50%)`
    oneE.style.backgroundColor=`hsl(${hue},50%,95%)`
    twoE.style.backgroundColor=`hsl(${hue},50%,90%)`
    threeE.style.backgroundColor=`hsl(${hue},50%,85%)`
})

