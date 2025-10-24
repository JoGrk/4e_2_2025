const resultE = document.getElementById('result')
const tiles1E = document.getElementById('tiles1')
const tiles2E = document.getElementById('tiles2')
const btnE = document.getElementById('btn')
const areaE = document.getElementById('area')

btnE.addEventListener('click',e=>{
    let area = Number(areaE.value)
    console.log(area)

    if(tiles1E.checked){
        resultE.textContent = `Koszt kafelkowania: ${area*70}zł`
    }
    else if(tiles2E.checked){
        resultE.textContent = `Koszt kafelkowania: ${area*80}zł` 
    }
})