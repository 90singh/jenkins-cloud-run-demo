resource "google_cloud_run_service" "python_app" {
  name     = "python-app"
  location = var.region
  template {
    spec {
      containers {
        image = "gcr.io/google-samples/hello-app:1.0" //pick an image from GCR.
      }
    }
  }
}

