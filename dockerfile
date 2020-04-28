FROM Fedora
RUN dnf update
RUN dnf install postgresql-12
USER postgres
RUN systemctl start postgresql-12
COPY example-jpa/build/libs/example-jpa-0.1.0-SNAPSHOT.jar /home/lyaysan
RUN dnf install openjdk-11-jre
CMD java -jar root/example-jpa-0.1.0-SNAPSHOT.jar