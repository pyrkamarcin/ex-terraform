resource "kubernetes_pod" "example" {

  metadata {
    name = "nginx-example"
    labels = {
      name = "app"
    }
  }

  spec {
    container {
      image = "nginx:1.17.6"
      name = "example"
    }
  }
}
