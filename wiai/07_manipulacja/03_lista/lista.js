const formE = document.querySelector('form')
const taskE = document.querySelector('#task')
const ulE = document.querySelector('ul')
const mainE = document.querySelector('main')

formE.addEventListener('submit',e=>{
    e.preventDefault()
    // if(taskE.value.length>2){
    //     const liE = document.createElement('li')
    //     liE.textContent = taskE.value
    //     ulE.appendChild(liE)
    //     taskE.value=''
    // }  

    if(taskE.value.length>2){
        const sectE = document.createElement('section')
        const pE = document.createElement('p')
        pE.textContent = taskE.value
        sectE.className = 'task'
        sectE.appendChild(pE)
        mainE.appendChild(sectE)
        taskE.value=''
    }
})


