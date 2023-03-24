resource "helm_release" "nablagames" {
  name       = "mc"

  chart      = "../helm"

  set {
    name  = "proxy.slots"
    value = "15"
  }
}