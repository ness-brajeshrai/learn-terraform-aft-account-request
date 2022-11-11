module "app_paclife_dev1" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "AWS-MunichRe-packife-dev+1@ness.com"
    AccountName               = "paclife_dev1"
    ManagedOrganizationalUnit = "Apps"
    SSOUserEmail              = "AWS-MunichRe-packife-dev+1@ness.com"
    SSOUserFirstName          = "paclife_dev1"
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
    group = "paclife_dev1"
  }

  account_customizations_name = "paclife_dev1"
}