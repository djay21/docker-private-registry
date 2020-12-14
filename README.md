# docker-private-registry

If using docker-compose 

apt update && apt install apache2-utils -y <br>
mkdir /auth <br>
cd /auth <br>
htpasswd -b -B -c registry.password yourusername uourpassword <br>
docker-compose up -d <br>

<br><br><br>
If using Dockerfile <br>
docker build -t registry . <br>
docker run -p 5000:5000 -d -v ./data=/data registry 
