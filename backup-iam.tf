
resource "aws_iam_role" "ebsbkprole" {
  name               = "ebsbkprole"
  assume_role_policy = "${file("iam/backup-assume-role.json")}"
}

resource "aws_iam_role_policy_attachment" "ebsbkppolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSBackupServiceRolePolicyForBackup"
  role       = "${aws_iam_role.ebsbkprole.name}"
}

