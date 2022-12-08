resource "template_file" "this_template" {
    template = "${file("./templates/assume_role.json")}"

    vars {
        auth_account_id = "${var.iam_auth_account_id}"
    }
}

resource "aws_iam_role" "this_role" {
  for_each =  var.iam_roles
  name = each.role_name
  assume_role_policy = "${template_file.this_template.rendered}"
  path = "/"
}