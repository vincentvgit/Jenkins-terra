pipeline{
    agent any
    
    stages{
        stage("terraform init"){
            steps{
                echo "========executing A========"
                sh 'terraform init'
            }
            
        }
    }
    stage{
        steps{
            sh 'terraform plan'
        }
    }
    
    stage(terraform apply){
        steps{
            sh 'terraform apply --auto-approve'
        }
    }
    
    }
