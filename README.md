# docker-private-registry

If using docker-compose 

apt update && apt install apache2-utils -y
mkdir /auth
cd /auth
htpasswd -b -B -c registry.password yourusername uourpassword
docker-compose up -d


If using Dockerfile
docker build -t registry .
docker run -p 5000:5000 -d -v ./data=/data registry 
