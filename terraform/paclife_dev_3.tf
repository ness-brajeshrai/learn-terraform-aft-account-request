module "app_paclife_dev3" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "AWS-MunichRe-packife-dev+3@ness.com"
    AccountName               = "dev3"
    ManagedOrganizationalUnit = "PacLife (ou-hydl-9m0kwt1i)"
    SSOUserEmail              = "AWS-MunichRe-packife-dev+3@ness.com"
    SSOUserFirstName          = "dev3"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Project" = "MunicRe Apps"
    "Owner"   = "Ness"
    "Type"    = "Dev"
    "OU"      = "PacLife"
  }

  change_management_parameters = {
    change_requested_by = "Brajesh Rai"
    change_reason       = "Provision a paclife dev account"
  }

  custom_fields = {
    group = "dev3"
  }

  account_customizations_name = "dev3"
}