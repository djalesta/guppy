let startX = 0;
let startY = 0;

document.addEventListener("touchstart", function (e) {
  startX = e.touches[0].clientX;
  startY = e.touches[0].clientY;
});

document.addEventListener("touchend", function (e) {
  const endX = e.changedTouches[0].clientX;
  const endY = e.changedTouches[0].clientY;
  handleSwipe(startX, endX, startY, endY);
});

document.addEventListener("mousedown", function (e) {
  startX = e.clientX;
  startY = e.clientY;
});

document.addEventListener("mouseup", function (e) {
  const endX = e.clientX;
  const endY = e.clientY;
  handleSwipe(startX, endX, startY, endY);
});

function handleSwipe(startX, endX, startY, endY) {
  const threshold = 50;
  const verticalLimit = 30; 

  const deltaX = endX - startX;
  const deltaY = endY - startY;

  if (Math.abs(deltaY) > verticalLimit) return;

  if (deltaX > threshold) {
    const prevUrl = document.getElementById("previous-fish")?.dataset.url;
    if (prevUrl) window.location.href = prevUrl;
  } else if (deltaX < -threshold) {
    const nextUrl = document.getElementById("next-fish")?.dataset.url;
    if (nextUrl) window.location.href = nextUrl;
  }
}
