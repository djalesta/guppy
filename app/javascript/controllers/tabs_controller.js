import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    document.querySelectorAll('.tab-underlined').forEach(tab => {
  tab.addEventListener('click', function(event) {
    event.preventDefault();

    // Remove active class from all tabs
    document.querySelectorAll('.tab-underlined').forEach(t => t.classList.remove('active'));
    this.classList.add('active');

    // Hide all tab content sections
    document.querySelectorAll('.tab-content').forEach(content => {
      content.classList.remove('active');
      content.style.display = "none"; // Ensures all are hidden first
    });

    // Show the selected tab's content
    const target = this.getAttribute('data-target');
    const targetElement = document.querySelector(target);

    if (targetElement) {
      targetElement.classList.add('active');
      targetElement.style.display = "block"; // Ensures visibility
    } else {
      console.error("Target tab not found:", target);
    }
  });
});
  }
}
