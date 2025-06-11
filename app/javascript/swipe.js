document.addEventListener("turbo:load", () => {
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


  document.addEventListener("keydown", function (e) {
    if (e.key === "ArrowLeft") {
      const prevEl = document.getElementById("previous-fish");
      if (prevEl && prevEl.dataset.url) {
        window.location.href = prevEl.dataset.url;
      }
    } else if (e.key === "ArrowRight") {
      const nextEl = document.getElementById("next-fish");
      if (nextEl && nextEl.dataset.url) {
        window.location.href = nextEl.dataset.url;
      }
    }
  });


  function handleSwipe(startX, endX, startY, endY) {
    const threshold = 50;
    const verticalLimit = 30;

    const deltaX = endX - startX;
    const deltaY = endY - startY;

    if (Math.abs(deltaY) > verticalLimit) return;

    if (deltaX > threshold) {
      const prevEl = document.getElementById("previous-fish");
      if (prevEl && prevEl.dataset.url) {
        window.location.href = prevEl.dataset.url;
      }
    } else if (deltaX < -threshold) {
      const nextEl = document.getElementById("next-fish");
      if (nextEl && nextEl.dataset.url) {
        window.location.href = nextEl.dataset.url;
      }
    }
  }
});
