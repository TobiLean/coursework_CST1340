var images = document.querySelectorAll(".scrollable img");
var dots = document.querySelectorAll(".dot");
var currentImage = 0;
const interval = 3000;


function changeCard(n) {
    for (var i = 0; i < images.length; i++) {
        images[i].style.opacity = 0;
        dots[i].className = dots[i].className.replace(" active", "");
    }


    currentImage = (currentImage + 1) % images.length;

    if (n != undefined) {
        clearInterval(timer);
        timer = setInterval(changeCard, interval);
        currentImage = n;
    }

    images[currentImage].style.opacity = 1;
    dots[currentImage].className += " active";
}

var timer = setInterval(changeSlide, interval);