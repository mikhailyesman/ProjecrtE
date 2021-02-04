docker build -t smeswebserver . 
docker run -it --rm -d -p 8080:80 --name web smeswebserver
