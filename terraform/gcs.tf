resource "google_compute_backend_bucket" "image_backend" {
  name        = "image-backend-bucket"
  description = "Contains beautiful images"
  bucket_name = google_storage_bucket.raddit.name
  enable_cdn  = true
}

resource "google_storage_bucket" "raddit" {
  name     = "raddit-store-bucket"
  location = "EU"
}
