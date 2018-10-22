# Docker-tftpd
FROM ubuntu

MAINTAINER jeff89179

# Build container
#   docker build -t jeff89179/tftpd .

# Start the container with the follonwing command:
#   docker run -it --rm -p 69:69 -v $(pwd):/var/lib/tftpboot --name tftpd jeff89179/tftpd
# I suggest creating the following path on your Docker server to map this to...
# /container-data/tftp-server/

# Install tftpd-hpa deamon
RUN apt-get update
RUN apt-get install -y tftpd-hpa
VOLUME /var/lib/tftpboot

EXPOSE 69

CMD /usr/sbin/in.tftpd --foreground --user tftp --address 0.0.0.0:69 --secure /var/lib/tftpboot
