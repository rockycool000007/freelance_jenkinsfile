def remote = [:]
    remote.name = "node-1"
    remote.host = "69.248.2.173"
    remote.allowAnyHosts = true

    node {
        withCredentials([usernamePassword(credentialsId: 'vinit', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
            remote.user = USERNAME
            remote.password = PASSWORD
            stage("SSH Steps Rocks!") {
                sshCommand remote: remote, command: 'cd /vol1/ejs_setup/apache/docs'
                sshCommand remote: remote, command: 'touch hello'
                sshCommand remote: remote, command: 'ls -l'
            }
        }
}