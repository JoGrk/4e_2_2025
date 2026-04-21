const btnE = document.getElementById('order')
const shapeE = document.querySelector('#shape')
const resultE = document.querySelector('#result')
const btnColorE = document.getElementById('color')
const redE = document.getElementById('red')
const blueE = document.getElementById('blue')
const greenE = document.getElementById('green')

btnE.addEventListener('click',e=>{
    let shape
    switch(shapeE.value){
        case '1':shape = 'cytryna'
                break
        case '2':shape = 'liść'
                break
        case '3':shape = 'banan'
                break
        default :shape = 'inny'
    }

    resultE.textContent=`Twoje zamowienie to ${shape}`

    btnColorE.style.backgroundColor= `rgb(${redE.value}, ${greenE.value}, ${blueE.value})`
})

