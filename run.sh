docker build -t cloudamqp-tls . && \
docker run --rm -e CLOUDAMQP_URL="amqps://user:password@blue-dromedary.rmq.cloudamqp.com/vhost" cloudamqp-tls
