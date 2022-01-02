@echo off
call mvn clean package
call docker build -t com.mycompany/HolaMundoJavaEE .
call docker rm -f HolaMundoJavaEE
call docker run -d -p 9080:9080 -p 9443:9443 --name HolaMundoJavaEE com.mycompany/HolaMundoJavaEE