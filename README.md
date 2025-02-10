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


e) Open ec2.tf file with your preferred code editor


f) Replace <PLACEHOLDERS> with your own data:

| Item | Instructions | Further info |
| --- | --- | --- |
| `KEY_NAME` | replace it with your SSH key name | --- |


g) Open provider.tf file

| Item | Instructions | Further info |
| --- | --- | --- |
| `PROFILE_NAME` | replace it with the profile name created in your laptop | --- |


h) Open terraform.tvars file


| Item | Instructions | Further info |
| --- | --- | --- |
| `REGION` | replace it with your preferred region | https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-available-regions |
| `YOUR_INTERNET_IP` | replace it with your Internet IP | --- |
| `AMI` | replace it with the AWS AMI ID available in your preferred region | https://cloud-images.ubuntu.com/locator/ec2/ |
| `t2.micro` | replace it with your preferred machine type | https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#AvailableInstanceTypes |



i) Initialize Terraform

```
terraform init
```


j) Format your code

```
terraform fmt
```

k) Validate your code

```
terraform validate
```


l) Run dry the script

```
terraform plan
```


m) Create instance

```
terraform apply
```


n) SSH into the newly created Amazon AWS instance

```
ssh -i ~/.ssh/KEY_NAME ubuntu@INSTANCE_IP
```


o) If you want to delete the instance, use:

```
terraform destroy
```

