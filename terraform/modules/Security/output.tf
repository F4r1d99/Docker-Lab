output "sg_id" {
  value = aws_security_group.sg.id
}

output "instance_profile_name" {
  value = aws_iam_instance_profile.ssm_profile.name
}