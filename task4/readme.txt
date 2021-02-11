docker run -it --rm -d -p 8081:8080 -p 50000:50000 --name web smeswebserver
docker inspect -f "{{ .NetworkSettings.IPAddress }}" 60410df87a5f
docker exec -u root -t -i 60410df87a5f /bin/bash
docker cp bb54104c71fc:/var/jenkins_home /home/vagrant/mydockerbuild/site-content/
