const h2E = document.querySelector('h2')
const formE = document.querySelector('#add-form')
const form2E = document.querySelector('#delete-form')
const yourNameE = document.querySelector('#your-name')
const deleteDataE = document.querySelector('#delete-data')

function setGreeting(){
    if(localStorage.getItem('userName')){
        h2E.textContent=`witaj ${localStorage.getItem('userName')}`
    }
    else{
        h2E.textContent=`Nie znam ciebie, może się przedstawisz`
    }
}

setGreeting()

formE.addEventListener('submit',e=>{
    e.preventDefault()
   localStorage.setItem('userName',yourNameE.value)
   setGreeting()
})

form2E.addEventListener('submit',e=>{
    e.preventDefault()
    if(deleteDataE.checked){
        localStorage.removeItem("userName")
        setGreeting()
    }
})




