import { Controller } from "@hotwired/stimulus";
export default class extends Controller {

    connect() {
        console.log("Controller connected!");
    }


    createAndView() {
        console.log("Clicky")
        const url = this.element.dataset.url;

        fetch(url, { method: 'POST' })
            .then(response => response.text())
            .then(html => {
                const frame = document.getElementById('films'); // Adjust the ID if needed
                frame.innerHTML = html;
            });
    }
}
