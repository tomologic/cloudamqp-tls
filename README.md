# CloudAMQP Java client with TLS

This repository is a demonstration of how amqp-client fails to negotiate a TLS handshake with CloudAMQP server.

Tooling: Java 12, Maven 3, Docker

Most verbose output is received using -Djavax.net.debug=all. Following script builds and runs a docker image:

    ./run.sh
