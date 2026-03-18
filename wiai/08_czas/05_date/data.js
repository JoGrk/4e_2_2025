const localDateE = document.querySelector('.time')

let timeLocal = new Date()

localDateE.textContent=`${timeLocal}`
localDateE.textContent=timeLocal.toLocaleTimeString()

// let refresh = setInterval(()=>{
//     let timeLocal = new Date()
//     localDateE.textContent=timeLocal.toLocaleTimeString()

// },10)

let refresh = setInterval(()=>{
    let timeLocal = new Date()
    let m = timeLocal.getMinutes()
    m = (m<10)?`0${m}`:m
    let s = timeLocal.getSeconds()
    // if(s<10){
    //     s = `0${s}`
    // }
    s = (s<10)?`0${s}`:s
    localDateE.innerHTML=timeLocal.innerHTML=`${m}<sup><u>${s}</sup></u>`

},10)