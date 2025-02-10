# Create Amazon AWS EC2 instance using Terraform


## Description

Create a "t2.micro" (1 CPU - 1GB RAM - 30GB SSD) Amazon AWS instance (virtual machine) running Ubuntu 24.04 (LTS) using Terraform provisioning tool.



## Prerequisites

a) Amazon AWS account<br />
b) Amazon AWS CLI tool already installed in your laptop and setup with your AWS account credentials<br />
c) An SSH key pair on your laptop<br />
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


e) Open terraform.tfvars file with your preferred code editor


f) Replace <TEMPORARY_ITEMS> with your own data:

| Item | Instructions | Further info |
| --- | --- | --- |
| `<AMI>` | replace <AMI> with the AWS AMI ID | https://cloud-images.ubuntu.com/locator/ec2/ |
| `<REGION>` | replace it with your preferred region | https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-available-regions |
| `<TYPE>` | replace it with your preferred machine type | https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#AvailableInstanceTypes |
| `<KEY>` | replace it with your SSH key name | For example: ~/.ssh/... |
| `<NAME>` | replace it with instance's name | For example: Terraform Ubuntu |



g) Initialize Terraform

```
terraform init
```


h) Format your code

```
terraform fmt
```

i) Validate your code

```
terraform validate
```


j) Run dry the script

```
terraform plan
```


k) Create instance

```
terraform apply
```


l) SSH into the newly created Amazon AWS instance

```
ssh -i ~/.ssh/KEY_NAME ubuntu@INSTANCE_IP
```


m) If you want to delete the instance, use:

```
terraform destroy
```

