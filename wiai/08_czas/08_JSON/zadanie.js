const formE = document.querySelector('form')
const taskE = document.getElementById('task')
const olE = document.querySelector('ol')

let taskArray = []

if(localStorage.getItem("myTaskArray")){
    taskArray = JSON.parse(localStorage.getItem("myTaskArray"));    
}
else{
    taskArray = ['uczymy sie js','dopisz jeszcze cos']
}

writeTask(taskArray)

formE.addEventListener('submit', e=>{
    e.preventDefault()
    taskArray.push(taskE.value)
    writeOneTask(task.value)
    localStorage.setItem("myTaskArray", JSON.stringify(taskArray))
})

function writeTask(taskArray){
    taskArray.forEach(task => {
        writeOneTask(task)
    });
}

function writeOneTask(oneTask){
    let liE = document.createElement('li')
    liE.textContent = oneTask
    olE.appendChild(liE)
}


