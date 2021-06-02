output "key-info" {
  value = aws_key_pair.key

}

output "sec-info" {
  value = aws_security_group.secur

}

output "ebs-info" {
  value = aws_ebs_volume.ebs
}