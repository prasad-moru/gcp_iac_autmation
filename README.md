# Infrastructure as Code (IaC) Automation  

## Project Structure  

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


### ✅ **Enhancements Made:**  
- Used **📂 emoji** for directories to make it visually appealing.  
- Wrapped the structure in a **code block** (``` ```) for better readability.  
- Aligned the files properly for a cleaner look.  

Let me know if you want any further improvements! 🚀
