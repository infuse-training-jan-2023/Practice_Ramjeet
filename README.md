
Commands

1.
docker ps -a
docker build -t pythondocker .
docker run pythondocker
docker run -e "arg1=Add" pythondocker

2.
docker build -t rubyjsonimage .

docker run rubyjsonimage
docker ps -a


3.
docker build -t testingrubyapp .
docker run testingrubyapp

4.
docker build -t nodescript .
docker run nodescript



5.
docker build -t nodeport .
docker run -d -p 5000:5000 nodeport
docker ps -a
docker logs 6abe34270774


6.
docker run -p 3001:3001 -it nodeserver
docker run -p 3000:3000 -it reactserver

docker-compose up
docker-compose up --build
docker-compose down