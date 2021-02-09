docker run -it --rm -d -p 8081:8080 -p 50000:50000 --name web smeswebserver
docker inspect -f "{{ .NetworkSettings.IPAddress }}" 60410df87a5f
docker exec -u root -t -i 60410df87a5f /bin/bash
docker cp bb54104c71fc:/var/jenkins_home /home/vagrant/mydockerbuild/site-content/newdocker

node {
    def remote = [:]
    remote.name = 'vagrant'
    remote.host = '192.168.0.3'
    remote.user = 'vagrant'
    remote.password = 'vagrant'
    remote.allowAnyHosts = true
    stage('Remote SSH') {
      sshCommand remote: remote, command: "sudo docker ps"
      sshCommand remote: remote, command: "sudo docker build -t smeswebserver . "
      sshCommand remote: remote, command: "sudo docker run -it --rm -d -p 8080:80 --name web smeswebserver"
      sshCommand remote: remote, command: "sudo docker ps"
    }
}
