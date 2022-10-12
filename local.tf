resource "local_file" "heroes" {
  filename = var.heroes_filename
  content = var.heroes_content
}

variable "heroes_content" {
  type = string
  default = "Heroes content"
  description = "The heroes content"
}

variable "heroes_filename" {
  type = string
  description = "The heroes filename"
}

output "heroes_filename_id" {
  value = local_file.heroes.id
}

output "heroes_filename_content" {
  value = local_file.heroes.content
}

output "data_source_result" {
  value = data.local_file.file_reference.content_base64
}

data "local_file" "file_reference" {
  filename = var.heroes_filename
}
