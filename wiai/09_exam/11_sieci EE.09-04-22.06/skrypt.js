const quantityArrayE = document.querySelectorAll('.quantity')
const updateArrayE = document.querySelectorAll('.update')
const orderArrayE = document.querySelectorAll('.order')
const productArrayE = document.querySelectorAll('.productName')

let orderID = 0

amountCheck()

function amountCheck(){
    quantityArrayE.forEach(el=>{
        if(el.textContent==0){
            el.style.backgroundColor='red'
        }
        else if(el.textContent>=1 && el.textContent<=5){
            el.style.backgroundColor='yellow'
        }
        else{
            el.style.backgroundColor='honeydew'
        }
    })
}

updateArrayE.forEach((el, index)=>{
    el.addEventListener('click',e =>{
        let newQuantity =  prompt('Podaj nową ilość')
        quantityArrayE[index].textContent=newQuantity
        amountCheck()                  
    })
})

orderArrayE.forEach((el, index)=>{
    el.addEventListener('click',e =>{
        orderID++
       //let productName = productArrayE[index].textContent
       let productName = el.parentElement.parentElement.children[0].textContent
       alert(`Zamówienie nr: ${orderID} Produkt: ${productName}`)
    })
})