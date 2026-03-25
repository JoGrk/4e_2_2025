const formE = document.querySelector('form')
const taskE = document.getElementById('task')
const olE = document.querySelector('ol')

let taskArray = ['uczymy sie js','dopisz jeszcze cos']

formE.addEventListener('submit', e=>{
    e.preventDefault()
    alert(taskE.value)

})

writeTask(taskArray )
function writeTask(taskArray){
    taskArray.forEach(task => {
        let liE = document.createElement('li')
        liE.textContent = task
        olE.appendChild(liE)
    });
}


