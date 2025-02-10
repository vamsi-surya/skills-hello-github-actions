FROM python3.11

ADD ./

RUN apt-get install requirments.txt

EXPOSE 8080

CMD ["python" "server.py"]

docker build -t ecr .
docker push ecr.

