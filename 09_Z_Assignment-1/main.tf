data "docker_registry_image" "nginx_image" {
  name = "nginx:latest"
}

resource "docker_image" "nginx_image" {
  name = data.docker_registry_image.nginx_image.name
}
