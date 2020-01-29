resource "kubernetes_service" "example" {

  metadata {
    name = "nginx-example"
  }

  spec {
    selector = {
      name = "app"
    }
    session_affinity = "ClientIP"
    port {
      port = 8080
      target_port = 80
    }

    type = "LoadBalancer"
  }
}
