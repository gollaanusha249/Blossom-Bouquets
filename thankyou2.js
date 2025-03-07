function changeImage(imageSrc) {
    document.getElementById('main-image').src = imageSrc;
}

function checkDelivery() {
    alert('Checking delivery availability...');
}

// Timer countdown function
let timer = document.getElementById('timer');
let time = timer.innerText.split(':').map(Number);

function countdown() {
    if (time[2] > 0) {
        time[2]--;
    } else if (time[1] > 0) {
        time[1]--;
        time[2] = 59;
    } else if (time[0] > 0) {
        time[0]--;
        time[1] = 59;
        time[2] = 59;
    } else {
        clearInterval(interval);
        timer.innerText = "Delivery time has passed.";
    }

    timer.innerText = `${String(time[0]).padStart(2, '0')}:${String(time[1]).padStart(2, '0')}:${String(time[2]).padStart(2, '0')} hours left for today's delivery`;
}

let interval = setInterval(countdown, 1000);

// Zoom effect
const mainImage = document.getElementById('main-image');
const zoomedImage = document.getElementById('zoomed-image');
const imageZoomContainer = document.getElementById('image-zoom-container');

imageZoomContainer.addEventListener('mousemove', function(e) {
    const rect = imageZoomContainer.getBoundingClientRect();
    const x = e.clientX - rect.left;
    const y = e.clientY - rect.top;

    const xPercent = (x / rect.width) * 100;
    const yPercent = (y / rect.height) * 100;

    zoomedImage.style.display = 'block';
    zoomedImage.style.left = `${x - 75}px`;
    zoomedImage.style.top = `${y - 75}px`;

    zoomedImage.style.backgroundPosition = `${xPercent}% ${yPercent}%`;
    zoomedImage.style.backgroundImage = `url(${mainImage.src})`;
    zoomedImage.style.backgroundSize = `${rect.width * 4}px ${rect.height * 4}px`;
});

imageZoomContainer.addEventListener('mouseleave', function() {
    zoomedImage.style.display = 'none';
});
