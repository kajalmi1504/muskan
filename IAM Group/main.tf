# Create IAM Group
resource "aws_iam_group" "Admingroup" {
  name = "Admingroup"
}
# Create IAM Users and add them to the group
locals {
  user_names = ["rakesh", "bharat", "sohail", "vamshi", "suresh"]
}

resource "aws_iam_user" "example_users" {
  count = length(local.user_names)
  name  = local.user_names[count.index]
}

resource "aws_iam_group_membership" "Admingroup_membership" {
  count   = length(local.user_names)
  name    = "Admingroup_membership-${count.index}"
  group   = aws_iam_group.Admingroup.name
  users   = [aws_iam_user.example_users[count.index].name]
}

# Attach policies to the IAM Group
resource "aws_iam_policy_attachment" "s3_full_access" {
  name       = "Admingroup-s3-full-access"
  groups     = [aws_iam_group.Admingroup.name]
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

resource "aws_iam_policy_attachment" "ec2_full_access" {
  name       = "Admingroup-ec2-full-access"
  groups     = [aws_iam_group.Admingroup.name]
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}