const formE = document.querySelector('form')
const pE = document.querySelector('p')
const sizeE = document.querySelector('#size')
const styleE = document.querySelector('#style')
const colorE = document.querySelector('#color')
const redE = document.querySelector('#red')
const blueE = document.querySelector('#blue')
const greenE = document.querySelector('#green')


formE.addEventListener('submit',e=>{
    e.preventDefault()
    pE.style.fontSize=sizeE.value+'px'
    
   if(styleE.checked) {
    pE.style.fontStyle='italic'
   }
   else{
    pE.style.fontStyle='normal'
   }

   if(redE.selected){
    pE.style.color='red'
    pE.style.backgroundColor='lightred'
   }
   else if(blueE.selected){
    pE.style.color='blue'
    pE.style.backgroundColor='lightblue'
   }
   else if(greenE.selected){
    pE.style.color='green'
    pE.style.backgroundColor='lightgreen'
   }
})

