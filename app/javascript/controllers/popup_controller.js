import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="popup"
export default class extends Controller {
  static targets = ["messages"]
  connect() {
    console.log(this.messagesTarget)
  }
  show(event) {
    event.stopPropagation();
    this.messagesTarget.classList.remove("d-none")
  }

  hide(event) {
    event.stopPropagation();
    this.messagesTarget.classList.add("d-none")
  }
}
