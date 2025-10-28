const numE = document.querySelector('#num')
const discountE = document.querySelector('#discount')
const btnE = document.querySelector('button')
const resultE = document.querySelector('#result')

btnE.addEventListener('click',e=>{
    let num = Number(numE.value)
    // console.log(num)
    let cost = 0

    if(num<=50){
        cost = num*2
    }else{
        cost = num*1
    }
    if(discountE.checked){
        cost-= 0.2*num
    }
    resultE.textContent=`Koszt ogłoszeń: ${cost}zł.`
})