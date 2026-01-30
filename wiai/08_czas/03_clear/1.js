// 1. licznik (h1) odliczający co sekundę od 10 w dół, po uzyskaniu 0, odliczanie jest przerywane i wyświetlany napis BUM

const h1E = document.querySelector('h1');

let count = 10;

const interval1 = setInterval(() => {
    count--;
    h1E.textContent = count;
    if (count == 0) {
        h1E.textContent = "BUM";
        clearInterval(interval1);
    }
}, 1000);


// 2. Po 10 sekundach jest wyświetlana na stronie sekcja główna

const sectionE = document.querySelector('section');

setTimeout(() => {
    sectionE.style.display = 'block';
}, 10000);


// 3. W bloku bocznym wyświetlane są obrazy, do których ścieżki (nazwy) s,a zapisane  tablicy. Obrazki powinny być tworzone co 2 sekundy.

const asideE = document.querySelector('aside');

const images = ['2.jpg', '3.jpg', '4.jpg', '5.jpg', '6.jpg', '7.jpg'];

let imgIndex = 0;

const interval2 = setInterval(() => {
    if (imgIndex < images.length) {
        const imgE = document.createElement('img');
        imgE.src = images[imgIndex];
        asideE.appendChild(imgE);
        imgIndex++;
    } else {
        clearInterval(interval2);
    }
}, 2000);