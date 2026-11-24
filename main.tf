terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

resource "local_file" "test" {
  filename = "test.txt"
  content  = "Hello, World!"
}