def remote = [:]
    remote.name = "node-1"
    remote.host = "10.0.0.53"
    remote.allowAnyHosts = true

    node {
        withCredentials([usernamePassword(credentialsId: 'ej', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
            remote.user = USERNAME
            remote.password = PASSWORD
            stage("SSH Steps Rocks!") {
                sshCommand remote: remote, command: 'cd /vol1/ejs_setup/apache/docs'
                sshCommand remote: remote, command: 'touch hello'
                sshCommand remote: remote, command: 'ls -l'
            }
        }
}