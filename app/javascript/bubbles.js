document.addEventListener("turbo:load", function () {
    document.getElementById("bubble-btn").addEventListener("click", function (event) {
        const bubble = document.createElement("div");
        bubble.classList.add("bubble");

        bubble.style.left = `${event.clientX}px`;
        bubble.style.top = `${event.clientY}px`;

        document.getElementById("bubble-container").appendChild(bubble);

        setTimeout(() => {
            bubble.remove();
        }, 2000);
    });
});
