function area(){
    let a = parseFloat(document.getElementById('a').value)
    if(isNaN(a)){
        alert('Wpisz liczbę')
    }
    else{
        document.getElementById('result').innerHTML=`P = a<sup>2</sup> wynosi ${a*a}`
    }
}

