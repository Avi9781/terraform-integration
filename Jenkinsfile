pipeline {
    agent any
    tools {
        terraform 'terraform'
}
    stages{
        stage('Git Checkout'){
            steps{
                git 'https://github.com/Avi9781/terraform-integration.git'
            }
            
        }
        stage('Terraform init'){
            steps{
                sh 'terraform init'
            }
            
        }
        stage('Terraform plan'){
            steps{
                sh 'terraform plan'
            }
            
        }
        stage('Terraform apply'){
            steps{
                sh 'terraform apply --auto-approve'
            }
            
        }
    }
}