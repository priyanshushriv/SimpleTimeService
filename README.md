# SimpleTimeService

This repository contains the code and configuration files for the SimpleTimeService application and the infrastructure to deploy it on AWS using Terraform. Below are the instructions for cloning the repository and completing the tasks associated with it.

## Cloning the Repository

To get started, please clone this repository using the following Git command:

```bash
git clone https://github.com/priyanshushriv/SimpleTimeService.git
```

After cloning, your directory structure should look like this:

```
SimpleTimeService
├── app
│   ├── Dockerfile
│   ├── app.js
│   ├── microservice.yml
│   ├── package-lock.json
│   └── package.json
├── modules
│   └── my_eks_cluster
│       ├── main.tf
│       ├── outputs.tf
│       └── variables.tf
└── p41-infra
    └── eks
        ├── main.tf
        ├── outputs.tf
        ├── terraform.tf
        ├── terraform.tfvars
        └── variables.tf
```

## Task 1: Deploy SimpleTimeService in Kubernetes

To complete Task 1, follow these steps:

1. Change the current directory to the `app` folder:

   ```bash
   cd app/
   ```

2. Build the Docker image using the provided Dockerfile:

   ```bash
   docker build -t simpletimeservice .
   ```

3. Deploy the application to your Kubernetes cluster by applying the manifest file:

   ```bash
   kubectl create -f microservice.yml
   ```

## Task 2: Provision AWS Infrastructure with Terraform

To complete Task 2, follow these steps:

1. Change the current directory to the `p41-infra` folder:

   ```bash
   cd p41-infra
   ```

2. Initialize Terraform in the current directory:

   ```bash
   terraform init
   ```

3. Plan the changes that Terraform will apply to your AWS infrastructure:

   ```bash
   terraform plan
   ```

   This step will provide an overview of the changes Terraform will make to your infrastructure.

**Note**: The `terraform.tfvars` file is committed to the repository and does not contain any sensitive credentials.

## Task 3: Implement in AWS Account

If you intend to implement this in an AWS account, you should add your AWS access_key and secret_key to the `terraform.tf` file under the provider block located in `p41-infra/eks/`.

Be cautious with your access_key and secret_key, and ensure they are stored securely.

Now you are ready to deploy the SimpleTimeService application and the associated infrastructure in your AWS account.

For any questions or issues, please refer to the repository owner or maintainers.