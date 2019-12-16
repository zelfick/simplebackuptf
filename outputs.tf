output "backup_vault_id" {
  value       = "${aws_backup_vault.ebsvault.id}"
  description = "Backup Vault ID"
}

output "backup_vault_arn" {
  value       = "${aws_backup_vault.ebsvault.arn}"
  description = "Backup Vault ARN"
}

output "backup_vault_recovery_points" {
  value       = "${aws_backup_vault.ebsvault.recovery_points}"
  description = "Backup Vault recovery points"
}

output "backup_plan_arn" {
  value       = "${aws_backup_plan.ebsbkp.arn}"
  description = "Backup Plan ARN"
}

output "backup_plan_version" {
  value       = "${aws_backup_plan.ebsbkp.version}"
  description = "Unique, randomly generated, Unicode, UTF-8 encoded string that serves as the version ID of the backup plan"
}

output "backup_selection_id" {
  value       = aws_backup_selection.ebsbkpselection.id
  description = "Backup Selection ID"
}