pipeline {
    agent any
    environment {
        creds = ''
    }
    stages {
        stage("") {
            steps {
                withCredentials([usernamePassword(credentialsId: 'sshUser', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                    sh 'ssh $USERNAME:$PASSWORD@158.69.201.85'
                }
            }
        }
    }
    post {
        always {  
            cleanWs()
        }
    }
}