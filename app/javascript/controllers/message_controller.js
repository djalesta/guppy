import { Controller } from "@hotwired/stimulus"
import consumer from "../channels/consumer"

export default class extends Controller {
  static values = { matchId: Number }

  connect() {
  const element = this.element;

  this.channel = consumer.subscriptions.create(
    { channel: "MessageChannel", match_id: this.matchIdValue },
    {
      received(data) {
        const wrapper = document.createElement("div");
        wrapper.innerHTML = data.message;
        const newMessage = wrapper.firstElementChild;

        element.prepend(newMessage);
        element.scrollTop = element.scrollHeight;
      }
    }
  );
}

  disconnect() {
    if (this.channel) {
      this.channel.unsubscribe();
    }
  }
}
