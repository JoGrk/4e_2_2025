const classE = document.querySelector('#class')
const pE = document.querySelector('p')

classE.addEventListener('change', e=>{
    pE.className = classE.value
})