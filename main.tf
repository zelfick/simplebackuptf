
resource "aws_backup_plan" "ebsbkp" {
  name = "tf_ebs_backup_plan"

  rule {
    rule_name         = "tf_ebs_backup_rule"
    target_vault_name = "${aws_backup_vault.ebsvault.name}"
    #this corresponds to a daily backup at 3AM PST 11 AM UTC
    schedule          = "cron(0 11 ? * * *)"
    # the snapshot would last for 15 days
    lifecycle         {
      delete_after    = "12"
    } 
  }
}


resource "aws_backup_selection" "ebsbkpselection" {
  iam_role_arn = "${aws_iam_role.ebsbkprole.arn}"
  name         = "tf_tagbackuptrue"
  plan_id      = "${aws_backup_plan.ebsbkp.id}"

  selection_tag {
    type  = "STRINGEQUALS"
    # Backup ebs resources that have the tag bakup equal to true
    key   = "backup"
    value = "true"
  }
}

resource "aws_backup_vault" "ebsvault" {
  name        = "tf_ebsvault"
 # kms_key_arn = "${aws_kms_key.ebsvault.arn}"
}
