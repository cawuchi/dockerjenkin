# Git Clone from Git HUB
FROM alpine/git as repo
MAINTAINER cawuchi
USER root
WORKDIR /app
RUN git clone  https://github.com/acadalearning/Jenkins-Docker-K8s-Spring-boot-mongo.git

# PACKAGE THE FILES from MAVEN
FROM maven:latest as build
USER root
WORKDIR /app
COPY --from=repo /app/Jenkins-Docker-K8s-Spring-boot-mongo/ /app
RUN mvn clean package

#DEPLOY to TOMCAT
FROM tomcat:latest
COPY --from=build /app/target/*.jar /usr/local/tomcat/webapps/ 
