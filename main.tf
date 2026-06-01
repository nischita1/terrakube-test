terraform {
  required_version = ">= 1.0"
}

resource "null_resource" "hello" {
  provisioner "local-exec" {
    command = "echo Hello from Terrakube new" 
  }
}

output "message" {
  value = "Workspace ran successfully after changes !!!"
}
