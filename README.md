# Create Amazon AWS instance using Terraform


## Description

Create a "t2.micro" (1 CPU - 1GB RAM - 30GB SSD) Amazon AWS instance (Virtual Machine) running Ubuntu 20.04 using Terraform provisioning tool.



## Prerequisites

a) Amazon AWS account<br />
b) Amazon AWS CLI tool already installed in your laptop and setup with your AWS account credentials<br />
c) An Amazon AWS SSH key pair (.pem) on your laptop<br />
d) Terraform installed<br />



## Instructions

a) On your laptop create a working directory


b) In your working directory open a console window


c) Clone github repository

```
git clone https://github.com/jobetinfosec/terraform-aws-instance.git
```


d) Switch to script directory

```
cd terraform-aws-instance
```


e) Open terraform.tfvars file

```
nano terraform.tfvars
```


f) Replace <TEMPORARY_ITEMS> with your own data:

| Item | Instructions | Further info |
| --- | --- | --- |
| `<AMI>` | replace <AMI> with the AWS AMI ID | https://cloud-images.ubuntu.com/locator/ec2/ |
| `<REGION>` | replace it with your preferred region | https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-available-regions |
| `<TYPE>` | replace it with your preferred machine type | https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#AvailableInstanceTypes |
| `<KEY>` | replace it with your SSH key name | ~/.ssh/... |
| `<NAME>` | replace it with instance's name | |



g) Initialize Terraform

```
terraform init
```


h) Check for errors

```
terraform plan
```


i) Create instance

```
terraform apply
```


j) SSH into the newly created Amazon AWS instance

```
ssh -i ~/.ssh/<KEY_NAME>.pem ubuntu@`terraform output instance_public_ip`
```


k) If you want to delete the instance, use:

```
terraform destroy
```

