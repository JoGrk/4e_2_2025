const pE = document.querySelector('.time')

let goalDate = new Date()
let CurrentDate = new Date()
goalDate.setMinutes(21)
goalDate.setSeconds(15)



// pE.textContent=`${goalDate.getMinutes()}:${goalDate.getSeconds()}`
// let m = Math.floor(DivDate / (1000*60))
// let s = Math.floor(DivDate / (1000)) - m*60
// pE.textContent = `${m}:${s}`

let countdown = 
setInterval(() => {
    let CurrentDate = new Date()
    let DivDate = goalDate - CurrentDate
    let m = Math.floor(DivDate / (1000*60))
    let s = Math.floor(DivDate / (1000)) - m*60
    s = (s < 10)?`0${s}`:s
    pE.textContent = `${m}:${s}`
    if(m == 0 && s == 0){
        clearInterval(countdown)
    }
}, 10);