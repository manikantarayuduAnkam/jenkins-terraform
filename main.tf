pipeline{
    agent any
    tools{
        terraform "mani-jenkins-task"
    }
    stages{
        stage("Git Checkout"){
            steps{
                git credentialsId: "manikantarayuduAnkam", url: "https://github.com/manikantarayuduAnkam/jenkins-terraform"
            }
        }
        stage("terraform init"){
            steps{
                sh "terraform init"
            }
        }
    }
        stage("terraform apply"){
            steps{
                sh "terraform apply --auto-approve"
            }
        }
}
