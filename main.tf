terraform{
    required_providers {
      local = {
        source = "hasicorp/local"
      }
    }
}

resource "local_file" "test" {

    filename = "test.txt"
    content  = "Hello, World!"
  
}