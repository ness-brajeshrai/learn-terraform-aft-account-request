module "app_paclife_dev" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "AWS-MunichRe-Sandbox@ness.com"
    AccountName               = "paclife_dev"
    ManagedOrganizationalUnit = "PacLife"
    SSOUserEmail              = "AWS-MunichRe-Sandbox@ness.com"
    SSOUserFirstName          = "paclife_dev"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Project" = "MunicReCore"
    "Owner"   = "Ness"
    "Type"    = "Dev"
    "OU"      = "PacLife"
  }

  change_management_parameters = {
    change_requested_by = "Brajesh Rai"
    change_reason       = "Provision a paclife dev account"
  }

  custom_fields = {
    group = "paclife_dev"
  }

  account_customizations_name = "paclife_dev"
}          