FROM ubuntu:20.04

RUN apt-get update && apt-get -y install systemd

CMD ["/usr/lib/systemd/systemd"]
