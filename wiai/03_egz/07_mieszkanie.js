const m2E = document.getElementById('m2')
const roomsE = document.getElementById('rooms')
const tilesE = document.getElementById('tiles')
const btnE = document.getElementById('btn')
const resultE = document.getElementById('result')

btnE.addEventListener('click', (e)=>{
    let m2 = Number(m2E.value)
    let rooms= Number(roomsE.value)
    let cost=m2*4000
    cost+=rooms*1000
    if(tilesE.checked){
        cost+=2000
    }

    resultE.textContent=`Koszt mieszkania:${cost}zł`
})