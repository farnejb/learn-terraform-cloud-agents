terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "2.13.0"
    }
  }
  required_version = ">= 0.13"
}

provider "docker" {
  # host    = "npipe:////.//pipe//docker_engine"
  host = "tcp://127.0.0.1:2375/"
}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = "nginx"
  ports {
    internal = 80
    external = 8000
  }
}
