module "daniela" {
  source   = "./module"
  for_each = toset( ["Daniela", "Catalina", "Cristina", "Ana"] )
}
