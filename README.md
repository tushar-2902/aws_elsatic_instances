<!-- 🌟 3D Banner -->
<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=rounded&color=232F3E&height=180&fontSize=38&fontColor=FFFFFF&text=AWS%20EC2%20%2B%20Elastic%20IP%20using%20Terraform&animation=fadeIn&desc=Infrastructure%20as%20Code%20|%20Static%20Public%20IP%20|%20AWS%20Automation&descSize=18&descAlign=50&descAlignY=70"/>
</p>

<!-- ⌨️ Typing Effect -->
<p align="center">
  <img src="https://readme-typing-svg.demolab.com?font=JetBrains+Mono&size=22&pause=1000&color=FF9900&center=true&vCenter=true&width=900&lines=Terraform+on+AWS;EC2+Instance+with+Elastic+IP;Static+Public+IP+Automation;DevOps+Infrastructure+Project" />
</p>

<!-- 🔰 Badges -->
<p align="center">
  <img src="https://img.shields.io/badge/Cloud-AWS-232F3E?style=for-the-badge&logo=amazonaws&logoColor=FF9900"/>
  <img src="https://img.shields.io/badge/Service-EC2-orange?style=for-the-badge&logo=amazonec2&logoColor=white"/>
  <img src="https://img.shields.io/badge/Service-Elastic%20IP-blue?style=for-the-badge&logo=amazonaws&logoColor=white"/>
  <img src="https://img.shields.io/badge/Tool-Terraform-5C4EE5?style=for-the-badge&logo=terraform&logoColor=white"/>
</p>

---

## 🚀 Project Overview

This project provisions an **AWS EC2 instance with an Elastic IP (EIP)** using **Terraform**.  
Elastic IP ensures a **static public IPv4 address** that remains consistent even if the EC2 instance is stopped or restarted.

The setup demonstrates **real-world AWS Infrastructure as Code (IaC)** concepts used in production environments.

---

## 🧱 Infrastructure Components

- 🖥️ AWS EC2 Instance  
- 🌐 Elastic IP (VPC scoped)  
- 🔗 Elastic IP Association with EC2  
- 🏷️ Resource tagging  
- ⚙️ Terraform AWS Provider  

---

## 📂 Project Structure

```bash
AWS_FOLDER/
├── EC2_instances/
│   ├── EC2.tf
│   └── provider.tf
├── elastic_ip/
│   ├── elastic_ip.tf
│   ├── association_eip.tf
│   ├── ec2.tf
│   ├── provider.tf
│   └── terraform.tfstate
└── README.md
```

---

## ⚙️ Key Terraform Resources

```hcl
resource "aws_eip" "lb" {
  domain = "vpc"

  tags = {
    Name = "tushar-ip"
  }
}
```

```hcl
resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.example.id
  allocation_id = aws_eip.lb.id
}
```

---

## 🏗️ Architecture Flow (Conceptual)

```mermaid
graph TD
    A[Terraform CLI] --> B[AWS Provider]
    B --> C[EC2 Instance 🖥️]
    B --> D[Elastic IP 🌐]
    D --> E[EIP Association 🔗]
    E --> C
```

---

## 🧪 How to Deploy

```bash
# Configure AWS credentials
aws configure

# Initialize Terraform
terraform init

# Validate configuration
terraform validate

# Preview changes
terraform plan

# Apply infrastructure
terraform apply -auto-approve

# Destroy resources (optional)
terraform destroy -auto-approve
```

---

## 🛡️ Best Practices Demonstrated

- Infrastructure as Code (IaC)
- Static public IP using Elastic IP
- Clean and readable Terraform files
- Proper tagging of AWS resources
- Ready for CI/CD pipeline integration

---

## 👨‍💻 Author

**Tushar Mishra**  
DevOps Engineer | AWS | Terraform  
📧 Email: tusharmishra2902@gmail.com  
🔗 LinkedIn: https://linkedin.com/in/tushar-mishra-02461235a  
🐙 GitHub: https://github.com/tushar-2902  

---

## 📜 License

This project is licensed under the **MIT License**.

---

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=232F3E&height=110&section=footer"/>
</p>
