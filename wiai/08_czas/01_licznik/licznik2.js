const h1E = document.querySelector('h1')

let count = 10

function countDown(){
    h1E.textContent = count
    count--
    if(count.value = 0){
        h1E.textContent = 'BOOM BOOM'
    }
}

setInterval(countDown, 1000)