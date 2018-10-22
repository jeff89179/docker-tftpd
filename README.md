# Docker tftp container

## Build
You can build the docker container localy using this command:

```
docker build -t jeff89179/tftpd https://github.com/jeff89179/docker-tftpd.git
```

## Run
To start a tftp container with the current dir as share like this:
 
```
docker run -it -p 69:69 -v $(pwd):/var/lib/tftpboot --name tftpd jeff89179/tftpd
```

# NOTE: for $(pwd), I suggest creating the following path on your Docker server to map this to...
# /container-data/tftp-server/
