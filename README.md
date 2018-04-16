# terraform-aws-sample
A sample EC2 instance creation using terraform

### Setup
```sh
# Install PIP (ubuntu)
$ sudo apt-get install python-pip python-dev build-essential
$ sudo pip install --upgrade pip
$ sudo pip install --upgrade virtualenv

# Install AWS CLI
$ sudo pip install --upgrade awscli
```

### Configure AWS CLI
```sh
# Need to create an IAM for console with respective permissions that will give you access key and secret key
$ aws configure

###
AWS Access Key ID [None]: your-access-key
AWS Secret Access Key [None]: your-secret-access-key
Default region name [None]: us-west-1
Default output format [None]: json
###
```

### Run
```sh
# Initialize terraform in new project
$ terraform init

# Verify your infrastructure changes before you execute
$ terraform plan

# Get your infrastructure built
$ terraform apply
```
