import { Controller } from "@hotwired/stimulus";
export default class extends Controller {

    createAndView() {

        const url = this.element.dataset.url;
        const csrfToken = document.head.querySelector('meta[name="csrf-token"]').content;

        fetch(url, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'X-CSRF-Token': csrfToken,
            },
        })
            .then(response => response.text())
            .then(html => {
                const frame = document.getElementById(this.element.id); // Adjust the ID if needed
                frame.innerHTML = html;
            });
    }
}
