# Infrastructure as Code (IaC) Automation

## Overview
This repository contains Terraform configurations for automating infrastructure deployment. It follows a modular approach, organizing infrastructure components into separate modules and environments.

## Project Structure
```
📂 IAC_Automation
│── terraform.tf
│── versions.tf
│
├── 📂 environments
│ ├── 📂 production
│ │ ├── backend.tf
│ │ ├── main.tf
│ │ ├── README.md
│ │ ├── terraform.tfvars
│ │ ├── variables.tf
│ │
│ ├── 📂 staging
│ │ ├── backend.tf
│ │ ├── main.tf
│ │ ├── README.md
│ │ ├── terraform.tfvars
│ │ ├── variables.tf
│
├── 📂 modules
│ ├── 📂 bastion
│ │ ├── main.tf
│ │ ├── outputs.tf
│ │ ├── README.md
│ │ ├── variables.tf
│ │
│ ├── 📂 gke
│ │ ├── main.tf
│ │ ├── outputs.tf
│ │ ├── README.md
│ │ ├── variables.tf
│ │
│ ├── 📂 node_pools
│ │ ├── main.tf
│ │ ├── outputs.tf
│ │ ├── variables.tf
│ │
│ └── 📂 vpc
│ ├── main.tf
│ ├── outputs.tf
│ ├── README.md
│ ├── variables.tf 
```

## How to Use
1. **Clone the repository:**
   ```sh
   git clone https://github.com/prasad-moru/gcp_iac_autmation.git
   cd IAC_Automation
   ```
2. **Initialize Terraform:**
   ```sh
   terraform init
   ```
3. **Plan the deployment:**
   ```sh
   terraform plan
   ```
4. **Apply the configuration:**
   ```sh
   terraform apply
   ```

## Contributions
Feel free to submit pull requests for improvements and bug fixes.

## License
This project is licensed under the MIT License.

