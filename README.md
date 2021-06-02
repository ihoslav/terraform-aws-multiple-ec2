# terraform-aws-multiple-ec2

```
module "your-module-name" {
    source = "ihoslav/multiple-ec2/aws"
    version = "specify version"

ami= "specify your ami"
instance-type = "specify your instance type"
subnet-id = "specify your subnet id"
security-group-name = "give your vpc name"
key-name = "give your key name"
vpc-id = "specify your vpc "
region = "specify your region"
availability-zone = "specify your AZ for volume"
ebs-size = "chose your volume size"
ec2-tag-name = "give your name to ec2"
ebs-tag-name = "give your volume name "
}

```
