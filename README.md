# WebServerWithAnsibleTerraform
Deploy a secure webserver on AWS using Ansible and Terraform
Automated Web Server Deployment with Terraform & Ansible

Overview
This project demonstrates how to provision and configure a secure Apache web server on AWS using Terraform for infrastructure as code (IaC) and Ansible for configuration management. It's designed for beginners looking to understand how DevOps tools work together to automate cloud deployments.

Tools 
•	Terraform – Provision AWS infrastructure (EC2, Security Groups)
•	Ansible – Install and configure Apache, deploy sample HTML content
•	AWS EC2 – Host the web server
•	Ubuntu Linux – Base OS for the EC2 instance.
 What This Project Does
•	Provisions an EC2 instance in a custom VPC using Terraform
•	Configures security groups to allow HTTP (port 80) and SSH (port 22)
•	Uses Ansible to:
o	Install Apache
o	Deploy a sample index.html
o	Configure UFW (firewall) rules
•	Outputs the public IP of the web server

Project Structure
Code
project-root/
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── ansible/
│   ├── playbook.yml
│   └── inventory.ini
└── README.md

 How to Run This Project
1. Deploy Infrastructure with Terraform
bash
cd terraform
terraform init
terraform apply

2. Configure Server with Ansible
Update inventory.ini with the EC2 public IP, then run:
bash
cd ../ansible
ansible-playbook -i inventory.ini playbook.yml


Notes:
Need to obtain key pairs, access key and secret access key from AWS. Free Tier has to use
T3.micro (T2.micro is no longer supported with free tier)
Result
After deployment, visit the EC2 public IP in your browser to see the sample web page served by Apache.
What I Learned
•	How to write Terraform code to provision AWS resources
•	How to use Ansible playbooks for remote configuration
•	Basics of cloud networking and security groups
•	How to automate infrastructure and configuration end-to-end
