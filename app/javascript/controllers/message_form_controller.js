import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["input"]
  static values = { matchId: Number, fishId: Number }

  connect() {
    this.element.addEventListener("submit", this.submit.bind(this))
  }

  submit(event) {
    event.preventDefault()
    const content = this.inputTarget.value.trim()
    if (content === "") return

    fetch(`/fish/${this.fishIdValue}/matches/${this.matchIdValue}/messages`, {
      method: "POST",
      headers: {
        "X-CSRF-Token": document.querySelector("meta[name='csrf-token']").content,
        "Content-Type": "application/json"
      },
      body: JSON.stringify({ message: { content: content } })
    })

    this.inputTarget.value = ""
  }
}
