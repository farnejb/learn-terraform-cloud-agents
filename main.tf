terraform {
  required_version = ">= 0.13"
}

resource "local_file" "foo" {
    content     = "foo!"
    filename = "/home/ubuntu/foo.bar"
}

resource "local_file" "foo-1" {
    content     = "foo!"
    filename = "/home/ubuntu/foo.bar"
}
