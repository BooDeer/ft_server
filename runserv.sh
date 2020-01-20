docker build -t $1 .
docker run -d --name $2 -p 80:80 $1
docker exec -it $2 bash
