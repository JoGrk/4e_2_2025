const colorE = document.getElementById('color')
const hueE = document.getElementById('hue')
const bodyE = document.querySelector('body')
const linkE = document.getElementById('link')
const pictureE = document.querySelector('#picture')
const imgE = document.querySelector('img')

if(localStorage.getItem('hue')){
    changeTheme(localStorage.getItem('hue'))
}
if(localStorage.getItem('img')){
    imgE.src=localStorage.getItem('img')
}

colorE.addEventListener('submit', e=>{
    e.preventDefault()
    changeTheme(hueE.value)
    localStorage.setItem('hue',hueE.value)
})

function changeTheme(hue){
    // alert(`wybrałeś kolor ${hue}`)
    bodyE.style.backgroundColor=`hsl(${hue}, 50%, 95%)`
    bodyE.style.color=`hsl(${hue}, 50%, 15%)`
}

linkE.addEventListener('submit', e=>{
    e.preventDefault()
    imgE.src=pictureE.value
    localStorage.setItem('img', pictureE.value)
})


