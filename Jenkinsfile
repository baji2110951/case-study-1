pipeline{
    agent any

    stages{
        stage("git checkout"){
            steps{
                git branch: 'main', credentialsId: 'git', url: 'https://github.com/baji2110951/case-study-1.git'
            }
        }
        stage("terraform init"){
            steps{
                sh 'terraform init -upgrade'
            }
        }
        stage("terraform format"){
            steps{
                sh "terraform fmt"
            }
        }
        stage("terraform apply"){
            steps{
                sh 'terraform apply --auto-approve'
            }
        }
    }
}
