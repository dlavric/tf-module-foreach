module "daniela" {
  source   = "./module"
  for_each = toset( ["DanielaDanielaDanielaDaniela", "CatalinaCatalinaCatalinaCatalinaCatalina", "CristinaCristinaCristinaCristinaCristinaCristinaCristina", "AnaAnaAnaAnaAnaAnaAnaAnaAnaAnaAna"] )
}
