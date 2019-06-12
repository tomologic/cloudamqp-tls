docker build -t cloudamqp-tls-mvn --target=builder . && \
docker run --rm -e CLOUDAMQP_URL="amqps://user:password@blue-dromedary.rmq.cloudamqp.com/vhost" cloudamqp-tls-mvn
