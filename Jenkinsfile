pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps {
        git 'https://github.com/vincentvgit/Jenkins-terra.git'
      }
    }

    stage('Terraform Init') {
      steps {
        withCredentials([azureServicePrincipal('azure')]) {
          sh 'terraform init'
        }
      }
    }

    stage('Terraform Plan') {
      steps {
        withCredentials([azureServicePrincipal('azure')]) {
          sh 'terraform plan'
        }
      }
    }

    stage('Terraform Appply') {
      steps {
        withCredentials([azureServicePrincipal('azure')]) {
          sh 'terraform apply -auto-approve'
        }
      }
    }
  }  
  }
