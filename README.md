## Checking Ubuntu AWS AMI

1. Find latest AMI ID by open "Create EC2 Page"
2. Get AMI information

```
make awscli ARG="ec2 describe-images --image-ids ami-0df99b3a8349462c6"
```
- Ubuntu AMI Owner ID: 099720109477
- Name: ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*


## Terraform
1. Update backend.tf, change `key`
2. Using these commands
```
make terraform ARG=init
make terraform ARG=plan
make terraform ARG=apple
```
