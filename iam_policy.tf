resource "aws_iam_role_policy" "this_policy" {
  for_each = var.iam_role_policies
  name = each.policy_name
  role = each.role_id
  policy = "${file("./files/${var.account_environemnt}/${each.file_name}.json")}"
}