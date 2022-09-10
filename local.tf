resource "local_file" "heroes" {
  filename = "./tmp/heroes.txt"
  content = "Batman; SuperMan; Flash"
}