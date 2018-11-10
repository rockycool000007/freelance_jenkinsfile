def remote = [:]
    remote.name = "node-1"
    remote.host = "<HOST IP>"
    remote.allowAnyHosts = true

    node {
        withCredentials([usernamePassword(credentialsId: 'sshUser', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
            remote.user = USERNAME
            remote.password = PASSWORD
            stage("SSH Steps Rocks!") {
                writeFile file: 'abc.sh', text: 'ls'
                sshCommand remote: remote, command: 'for i in {1..5}; do echo -n \"Loop \$i \"; date ; sleep 1; done'
                sshPut remote: remote, from: 'abc.sh', into: '.'
                sshGet remote: remote, from: 'abc.sh', into: 'bac.sh', override: true
                sshScript remote: remote, script: 'abc.sh'
                sshRemove remote: remote, path: 'abc.sh'
            }
        }
}