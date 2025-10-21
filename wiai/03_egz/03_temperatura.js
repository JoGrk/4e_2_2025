const tempCE = document.getElementById('tempC')
const btnKE = document.getElementById('btnK')
const btnFE = document.getElementById('btnF')
const resultE = document.getElementById('result')

btnKE.addEventListener('click', (e)=>{
    let tempC = parseFloat(tempCE.value)
    if(isNaN(tempC)){
        alert('Bład danych')
    }
    else{
        resultE.textContent=`${tempC+273.15}K`
    }
})