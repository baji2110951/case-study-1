pipeline{
    agent any

    stages{
        stage("git checkout"){
            steps{
                git branch: 'main', credentialsId: 'git', url: 'https://github.com/baji2110951/case-study-1.git'
            }
        }
        stage("build"){
            steps{
                sh 'mvn package'
            }
        }
        stage("terraform init"){
            steps{
                sh 'terraform init'
            }
        }
        stage("terraform validate"){
            steps{
                sh 'terraform validate'
            }
        }
        stage("terraform plan"){
            steps{
                sh 'terraform plan'
            }
        }
        stage("terraform action"){
            steps{
                echo "the terraform action is --> ${action} "
                sh 'terraform ${action} --auto-approve'
            }
        }
    }
}
