'use strict';



/**
 * add event listener on multiple elements
 */

const addEventOnElements = function (elements, eventType, callback) {
  for (let i = 0, len = elements.length; i < len; i++) {
    elements[i].addEventListener(eventType, callback);
  }
}

/**
 * PRELOADER
 * 
 * preloader will be visible until document load
 */

const preloader = document.querySelector("[data-preloader]");

window.addEventListener("load", function () {
  preloader.classList.add("loaded");
  document.body.classList.add("loaded");
});

function updateDateTime() {
    const currentDate = new Date();
    const options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric', hour: '2-digit', minute: '2-digit', hour12: false };
    const formattedDate = currentDate.toLocaleDateString('en-US', options);

    document.getElementById('currentDateTime').textContent = formattedDate;
}

// Call the function to update date and time immediately
updateDateTime();

// Update date and time every second
setInterval(updateDateTime, 1000);

// JavaScript to handle font size change
document.addEventListener("DOMContentLoaded", function () {
    // Set initial font size to 16px (adjust as needed)
    let currentFontSize = 16;

    // Function to update the font size
    function updateFontSize() {
        document.body.style.fontSize = currentFontSize + "px";
    }

    // Button click event handlers
    document.getElementById("decfont").addEventListener("click", function () {
        currentFontSize -= 2; // Decrease font size by 2px (adjust as needed)
        updateFontSize();
    });

    document.getElementById("incfont").addEventListener("click", function () {
        currentFontSize += 2; // Increase font size by 2px (adjust as needed)
        updateFontSize();
    });

    document.getElementById("resetFont").addEventListener("click", function () {
        currentFontSize = 16; // Reset font size to 16px (adjust as needed)
        updateFontSize();
    });
});

let vid = document.getElementById("myVideo");

function getPlaySpeed() { 
alert(vid.playbackRate);
} 

function setPlaySpeed() { 
vid.playbackRate = 0.5;
}

document.addEventListener("DOMContentLoaded", function () {
const searchIcon = document.getElementById("searchIcon");
const searchPopup = document.getElementById("searchPopup");
const closePopup = document.getElementById("closePopup");

// Show the search pop-up when the search icon is clicked
searchIcon.addEventListener("click", function () {
searchPopup.style.display = "block";
});

// Close the search pop-up when the close button is clicked
closePopup.addEventListener("click", function () {
searchPopup.style.display = "none";
});

// You can also close the pop-up when the user clicks outside of it (optional)
window.addEventListener("click", function (event) {
if (event.target === searchPopup) {
    searchPopup.style.display = "none";
}
});
});


/**
 * MOBILE NAVBAR
 * 
 * show the mobile navbar when click menu button
 * and hidden after click menu close button or overlay
 */

// const navbar = document.querySelector("[data-navbar]");
// const navTogglers = document.querySelectorAll("[data-nav-toggler]");
// const overlay = document.querySelector("[data-overlay]");

// const toggleNav = function () {
//   navbar.classList.toggle("active");
//   overlay.classList.toggle("active");
//   document.body.classList.toggle("nav-active");
// }

// addEventOnElements(navTogglers, "click", toggleNav);



/**
 * HEADER & BACK TOP BTN
 * 
 * active header & back top btn when window scroll down to 100px
 */

    // const header = document.querySelector("[data-header]");
    // const backTopBtn = document.querySelector("[data-back-top-btn]");

    // const activeElementOnScroll = function () {
    //   if (window.scrollY > 100) {
    //     header.classList.add("active");
    //     backTopBtn.classList.add("active");
    //   } else {
    //     header.classList.remove("active");
    //     backTopBtn.classList.remove("active");
    //   }
    // }

    // window.addEventListener("scroll", activeElementOnScroll);



// /**
//  * SCROLL REVEAL
//  */

// const revealElements = document.querySelectorAll("[data-reveal]");

// const revealElementOnScroll = function () {
//   for (let i = 0, len = revealElements.length; i < len; i++) {
//     if (revealElements[i].getBoundingClientRect().top < window.innerHeight / 1.15) {
//       revealElements[i].classList.add("revealed");
//     } else {
//       revealElements[i].classList.remove("revealed");
//     }
//   }
// }

// window.addEventListener("scroll", revealElementOnScroll);

// window.addEventListener("load", revealElementOnScroll);

// document.addEventListener("DOMContentLoaded", function () {
//     const navOpenButton = document.querySelector('[data-nav-open-btn]');
//     const navMenu = document.querySelector('.nav-menu');

//     navOpenButton.addEventListener('click', function () {
//         // Toggle the active class on the navigation menu
//         navMenu.classList.toggle('active');
//     });
// });

let slideIndex = 0;
showSlides();

function showSlides() {
    let i;
    const slides = document.getElementsByClassName("mySlides");
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    slideIndex++;
    if (slideIndex > slides.length) {
        slideIndex = 1;
    }
    slides[slideIndex - 1].style.display = "block";
    setTimeout(showSlides, 2000); // Change slide every 2 seconds
}


const search = document.querySelector('.search')
const btn = document.querySelector('.btn')
const input = document.querySelector('.input')
const lens = document.querySelector('#lens-icon')

btn.addEventListener('click', () => {
    search.classList.toggle('active')
    input.focus()
})

var app = new Vue({
    el: '#app',
    data:{
      state: "close"
    }
  });