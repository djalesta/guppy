import * as bootstrap from "bootstrap" 

document.addEventListener("turbo:load", () => {
  const triggerButtons = document.querySelectorAll('[data-bs-toggle="modal"]');
  triggerButtons.forEach(button => {
    button.addEventListener("click", () => {
      const targetSelector = button.getAttribute("data-bs-target");
      const modalElement = document.querySelector(targetSelector);
      if (modalElement) {
        const modal = new bootstrap.Modal(modalElement);
        modal.show();
      }
    });
  });
});
