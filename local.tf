resource "local_file" "exemplo" {
  filename = "test.tf"
  content  = <<EOT
resource "local_file" "exemplo2" {
    filename = "test.tf"
    content = "Hello, World!"
}
EOT
}

resource "local_sensitive_file" "exemplo" {
  filename = "exemplo.txt"
  content  = var.conteudo
}

variable "conteudo" {
  type    = string
  default = "Hello, World!"
}
