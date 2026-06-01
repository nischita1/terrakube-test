terraform {
  required_version = ">= 1.0"
}

resource "null_resource" "hello" {
  provisioner "local-exec" {
    command = "echo Hello from Terrakube"
  }
}

output "message" {
  value = "Workspace ran successfully after changes !"
}
resource "null_resource" "hello" {
  triggers = {
    always_run = timestamp()
  }
  provisioner "local-exec" {
    command = "echo Hello from Terrakube"
  }
}
