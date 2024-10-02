GITHUB ACTIONS AUTOMATION

This guide provides step-by-step instructions for the GitHub Actions to automatically create an AWS EC2 instance whenever a commit is made to a GitHub repository, using Terraform code.

Create an IAM user by providing EC2 permissions, also generate access keys to the user.
Navigate to IAM management console --> users --> create user --> Name of user --> next --> attach policies directly --> amazon ec2 full access --> next --> create user
Select user --> security credentials --> create access key (Download the csv file of access keys and save it for future reference.)
Add environment secrets in GitHub Repo
Open your GitHub Repository --> settings --> Environments --> new environment --> env name --> configure environment
select the environment and add environment secrets (Access-key-id , Secret-access-key)
Write Terraform code and workflow file in your local (visual studio code)
Push terraform code and workflow code to your GitHub Repository.
Open Gitbash in your local and clone the GitHub Repo to Gitbash
git clone repository-url copy the files to your Repository cloned in local

enter into the repository

cd reponame/

git add .

git commit -m "commit-1"

git push

##When the code commits and push changes to your GitHub repository then automatically GitHub Actions will trigger the workflow and create an ec2 instance.
