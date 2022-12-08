# tf-aws-IAM
IAM users creation

To import the module add the following to the main.tf file:
```
module "iam" {
  source = "git::ssh://git@github.com:SShaheeda/tf-aws-IAM.git"

  iam_auth_account_id = "xxxxxxxxxxxx"
  iam_account_environemnt = "dev"

  iam_roles = {
   admin_role = {
     role_name     = "eht-development-admin-role"
   },
   dev_role = {
     role_name= "eht-development-role"
   },
   readOnly_role = {
     role_name= "eht-development-role"
   }
 }

iam_role_policies = {
  ep_admin_policy = {
    policy_name = ""
    role_id = ""
    file_name =
  },
  ep_readonly_policy = {
    policy_name = ""
    role_id = ""
    file_name =
  },
  ops_admin_policy = {
    policy_name = ""
    role_id = ""
    file_name =
  },
  ops_readonly_policy = {
    policy_name = ""
    role_id = ""
    file_name =
  },
  dev_admin_policy = {
    policy_name = ""
    role_id = ""
    file_name =
  },
  dev_readonly_policy = {
    policy_name = ""
    role_id = ""
    file_name =
  },   
  readonly_policy = {
    policy_name = ""
    role_id = ""
    file_name = 
  }, 
}


}
```