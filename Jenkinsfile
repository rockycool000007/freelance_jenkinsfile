pipeline {
    agent any
    environment {
        creds = ''
    }
    stages {
        stage("") {
            steps {
                withCredentials([usernamePassword(credentialsId: 'sshUser', passwordVariable: 'C_PASS', usernameVariable: 'C_USER')]) {
                    echo "\nUser: ${C_USER}\nPassword: ${C_PASS}\n"
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