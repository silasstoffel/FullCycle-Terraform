resource "local_file" "heroes" {
  filename = "./tmp/heroes.txt"
  content = var.heroes_content
}

variable "heroes_content" {
  type = string
  default = "Heros content"
  description = "The heroes content"
}

output "heroes_filename_id" {
  value = local_file.heroes.id
}

output "heroes_filename_content" {
  value = local_file.heroes.content
}