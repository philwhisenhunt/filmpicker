import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus = application
import ViewingsController from "controllers/viewings_controller";
application.register("viewings", ViewingsController);

export { application }
