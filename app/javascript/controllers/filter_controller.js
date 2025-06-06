

import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["dropdown"];

  toggle(event) {
    event.preventDefault(); // Prevents default browser behavior
    this.dropdownTarget.classList.toggle("show");
  }
}
