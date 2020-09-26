FROM centos:7

MAINTAINER KartikPunde <kpunde13@gmail.com>
USER root

VOLUME /data

RUN yum update -y && \
    yum install -y bash-completion \
                   openssh-server \
                   passwd \
                   java-1.8.0-openjdk \
                   java-1.8.0-openjdk-devel \
                   wget \
                   bind-utils --nogpgcheck && \
    yum clean all

RUN echo "root" | passwd root --stdin
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk/

WORKDIR /data/app
RUN mkdir -p /data/app
COPY newBuild.jar.jar /data/app/

EXPOSE 8080

WORKDIR /root
ENTRYPOINT ["java", "-jar", "/data/app/newBuild.jar"]
