import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dropdown"
export default class extends Controller {
  static targets = ["menu"]
  connect() {
    console.log("hi")
  }

  toggle() {
        console.log("Dropdown toggled!")
        this.menuTarget.classList.toggle("hidden")
    }
}

