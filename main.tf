terraform {
  required_version = ">= 0.13"
}

resource "local_file" "foo" {
    content     = "foo!"
    filename = "~/foo.bar"
}
