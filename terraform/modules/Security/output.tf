output "sg_id" {
  value = aws_security_group.sg.id
}

output "instance_profile_name" {
  value = aws_iam_instance_profile.ec2_ssm_profile.name
}