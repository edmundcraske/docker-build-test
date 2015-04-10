FROM centos:6.6

RUN yum -y install yum install java-1.8.0-openjdk-headless

COPY rpms/ /tmp/rpms/

RUN yum -y install /tmp/rpms/*.rpm

EXPOSE 8080 8081

ENTRYPOINT java -jar /opt/example/dropwizard-rpm-example-*.jar server /opt/example/config/configuration.yaml
