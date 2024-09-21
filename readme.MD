# Terraform AWS EC2

## Arguments
ami_id - (mandatory), user must provide AMI ID. This is in string format
instance_type -(optional),default is t3.micro
security_group_ids - (mandatory), user must provide list of SG ID

## outputs
public_ip - Public IP of the instance created
private_ip - Private IP of the instance created
instance_id - Instance ID of the instance created