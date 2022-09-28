data "aws_organizations_organization" "MunichRe-Admin" {}

resource "aws_organizations_organizational_unit" "example" {
  name      = "example"
  parent_id = aws_organizations_organization.MunichRe-Admin.roots[0].id
}