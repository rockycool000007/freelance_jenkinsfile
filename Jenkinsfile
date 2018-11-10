pipeline {
    agent any
    stages {
        stage("") {
            steps {
                withCredentials([usernamePassword(credentialsId: 'sshUser', passwordVariable: 'C_PASS', usernameVariable: 'C_USER')]) {
                    creds = "\nUser: ${C_USER}\nPassword: ${C_PASS}\n"
                    echo creds
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