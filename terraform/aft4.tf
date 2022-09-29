module "sandbox4" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "AWS-MunichRe-Sandbox@ness4.com"
    AccountName               = "sandbox-aft4"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "AWS-MunichRe-Sandbox@ness4.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT4"
  }

  account_tags = {
    "Project" = "MunicReDemo "
  }

  change_management_parameters = {
    change_requested_by = "Munichre Demo"
    change_reason       = "Demo a account creation with AFT"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox4"
}
