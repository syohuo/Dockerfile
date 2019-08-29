FROM java:8
MAINTAINER 70kg 449246146@qq.com
VOLUME /tmp
ADD dm-gateway.jar app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
