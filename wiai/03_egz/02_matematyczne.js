const aE = document.getElementById('a')
const bE = document.getElementById('b')
const btnAddE = document.getElementById('btn-add')
const btnSubE = document.getElementById('btn-sub')
const btnMultiE = document.getElementById('btn-multi')
const btnDiviE = document.getElementById('btn-divi')
const resultE = document.getElementById('result')

btnAddE.addEventListener('click', (e) => {

    let a = aE.value
    let b = bE.value
    console.log(a, b)
    if (a === "" || b === "") {
        resultE.textContent = "Proszę uzupełnić obie liczby."
    }
    else {
        a = Number(a)
        b = Number(b)
        resultE.textContent = `${a}+${b}=${a + b}`
    }
})
btnSubE.addEventListener('click', (e) => {

    let a = aE.value
    let b = bE.value
    console.log(a, b)
    if (a === "" || b === "") {
        resultE.textContent = "Proszę uzupełnić obie liczby."
    }
    else {
        a = Number(a)
        b = Number(b)
        resultE.textContent = `${a}-${b}=${a - b}`
    }
})
btnDiviE.addEventListener('click', (e) => {

    let a = aE.value
    let b = bE.value
    console.log(a, b)
    if (a === "" || b === "") {
        resultE.textContent = "Proszę uzupełnić obie liczby."
    }
    else {
        a = Number(a)
        b = Number(b)
        if (b == 0) {
            resultE.textContent = 'Nie wolno dzielić przez zero'
        }
        else {
            resultE.textContent = `${a}/${b}=${a / b}`
        }
    }
})

