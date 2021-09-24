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
            
        }stage('Approval') {
           when {
               not {
                   equals expected: true, actual: params.autoApprove
               }
           }
        
           steps{
                sh 'terraform apply --auto-approve'
            }
            
        }
        stage('sleep'){
            steps{
                sh 'sleep 120'
            }
            
        }
        stage('Terraform destroy'){
            steps{
                sh 'terraform destroy --auto-approve'
            }
            
        }
    }
}
