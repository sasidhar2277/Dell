resource "random_password" "password" {
  length           = 16
  special          = false
  override_special = "!@#$%^&*(){}|"
}

resource "random_password" "password2" {
  length           = 16
  special          = true
  override_special = "!@#$%^&*(){}|"
}

