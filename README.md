# CloudAMQP Java client with TLS

This repository is a demonstration of how amqp-client fails to negotiate a TLS handshake with CloudAMQP server.

Tooling: Java 12, Maven 3, Docker

Most verbose output is received using -Djavax.net.debug=all. Following script builds and runs a docker image:

    ./run.sh

A partial output dump showing the ClientHello message and the stack trace is available in stacktrace.txt.

Server and client ciphers are available in server-ciphers.txt and client-ciphers.txt.
