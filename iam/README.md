# :------------------IAM-Project ----------------------:
# Create three IAM users, attaches an inline policy (S3readonly) to user1, and sets up a login profile.

### IAM User ###

**main.tf**:--- Define the IAM users, attaches an inline policy (S3readonly) to user1 and create a login profile for user1 .

**variables.tf**:--- Defines the variable 'user'.

**outputs.tf**:--- To display the output of resources.

**terraform.tfvars**:---- define the values for the variables



### IAM (Identity and Access Management) is an AWS service that helps you securely control access to AWS resources by managing user identities, roles, and permissions.
It enables you to create and manage AWS users and groups and use permissions to allow or deny their access to AWS resources.

### An inline policy in AWS is used for specific users or resources. It's created directly by the user 
or resource configuration and defines what actions they can perform on AWS services.
They grant specific access rights to resources, such as S3 buckets, or if you want, you can provide another different policy, like EC2 instances, for individual users. 

### A login profile in AWS IAM is a set of credentials (username and password) that allows users to access AWS services through the AWS Management Console.
It enables secure authentication and user management within the AWS environment.

## Prerequisites:---

Terraform installed

**Initialize Terraform**

    terraform init

**Plan the Configuration**

    terraform plan

**Apply the Configuration**

    terraform apply

    

** Destroy the resources**

  	terraform destroy

  
    
