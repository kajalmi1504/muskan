output "my_user_arn" {
  value = aws_iam_user.my_user.arn
}
output "user_password" {
  value     = aws_iam_user_login_profile.credentials.password
  sensitive = true
}