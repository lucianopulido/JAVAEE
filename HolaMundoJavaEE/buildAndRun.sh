#!/bin/sh
mvn clean package && docker build -t com.mycompany/HolaMundoJavaEE .
docker rm -f HolaMundoJavaEE || true && docker run -d -p 9080:9080 -p 9443:9443 --name HolaMundoJavaEE com.mycompany/HolaMundoJavaEE