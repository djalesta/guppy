document.addEventListener("turbo:load", () => {
  const form = document.getElementById("new_message_form");
  const input = document.getElementById("message_input");
  if (!form) return;

  form.addEventListener("submit", function (e) {
    e.preventDefault();
    const content = input.value.trim();
    if (!content) return;

    const url = form.action;
    fetch(url, {
      method: "POST",
      headers: {
        "X-CSRF-Token": document.querySelector("meta[name='csrf-token']").content,
        "Content-Type": "application/json"
      },
      body: JSON.stringify({ message: { content: content } })
    });

    input.value = "";
  });
});
