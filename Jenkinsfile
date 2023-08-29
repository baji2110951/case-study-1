pipeline{
    agent any
    tools {
      terraform 'terraform'
    }
    stages{
        stage("git checkout"){
            steps{
                git branch: 'main', credentialsId: 'git', url: 'https://github.com/baji2110951/case-study-1.git'
            }
        }
        stage("terraform init"){
            steps{
                sh 'terraform init'
            }
        }
        stage("terraform apply"){
            steps{
                sh 'terraform apply --auto-approve'
            }
        }
    }
}
