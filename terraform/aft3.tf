module "sandbox3" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "AWS-MunichRe-Sandbox@ness3.com"
    AccountName               = "sandbox-aft3"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "AWS-MunichRe-Sandbox@ness3.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT3"
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

  account_customizations_name = "sandbox3"
}
