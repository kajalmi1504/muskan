resource "aws_iam_user" "my_user" {
  name = var.my_user
}

resource "aws_iam_user_policy_attachment" "my_user_policy_attachment" {
  user       = aws_iam_user.my_user.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}

resource "aws_iam_user_login_profile" "credentials" {
  user = aws_iam_user.kajaluser.name
  password_reset_required = true
}                             

resource "aws_iam_account_password_policy" "password_user" {
  minimum_password_length         = 8
  require_lowercase_characters    = true
  require_uppercase_characters    = true
  require_numbers                 = true
  require_symbols                 = true
  allow_users_to_change_password  = true
  hard_expiry                     = false
}

resource "aws_iam_user" "kajaluser" {
  name = var.kajaluser
}

resource "aws_iam_user" "mishrauser" {
  name = var.mishrauser
}
