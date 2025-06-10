import { Controller } from "@hotwired/stimulus";

// export default class extends Controller {
//   static targets = ["notification", "checkbox"];

//   connect() {
//     this.checkboxTargets.forEach(checkbox => {
//       checkbox.addEventListener("change", () => this.filterMatches());
//     });

//     this.filterMatches();
//   }

//   filterMatches() {
//     let selectedStatuses = new Set();

//     this.checkboxTargets.forEach(checkbox => {
//       if (checkbox.checked) {
//         selectedStatuses.add(checkbox.id);
//       }
//     });

//     this.notificationTargets.forEach(notification => {
//       let matchStatus = notification.dataset.status;

//       notification.style.display = selectedStatuses.has(matchStatus) ? "block" : "none";
//     });
//   }
// }

export default class extends Controller {
  static targets = ["checkbox", "notification"];

  filterMatches() {
    console.log("✅ Checkbox toggled!"); // Debugging log

    let selectedStatuses = new Set();
    this.checkboxTargets.forEach(checkbox => {
      if (checkbox.checked) {
        selectedStatuses.add(checkbox.id);
      }
    });

    console.log("Selected statuses:", selectedStatuses);

    this.notificationTargets.forEach(notification => {
      let matchStatus = notification.dataset.status;
      console.log(`Checking match status: ${matchStatus}`);

      notification.style.display = selectedStatuses.has(matchStatus) ? "block" : "none";
    });
  }
}
