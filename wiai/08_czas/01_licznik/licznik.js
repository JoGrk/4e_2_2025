// tworzymy na stronie h1 raz, cyklicznie


function createH1(){
    const h1E=document.createElement('h1')
    h1E.textContent='67'
    document.querySelector('body').appendChild(h1E)
}

// setTimeout(createH1, 2000)

setInterval(createH1, 1000)

