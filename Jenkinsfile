def remote = [:]
    remote.name = "node-1"
    remote.host = "69.248.2.173"
    remote.allowAnyHosts = true

    node {
        withCredentials([usernamePassword(credentialsId: '906ebc6c-47aa-4d0f-8441-b53c0145058d', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
            remote.user = USERNAME
            remote.password = PASSWORD
            stage("SSH Steps Rocks!") {
                sshCommand remote: remote, command: 'cd /vol1/ejs_setup/apache/docs'
                sshCommand remote: remote, command: 'touch hello'
                sshCommand remote: remote, command: 'ls -l'
            }
        }
}