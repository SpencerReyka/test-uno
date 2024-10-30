#!/bin/bash
# Your commands here

chmod -R 777 ./mounted
docker build -t my-dind .
sleep 20
docker run --privileged -d --name my-dind -v ./mounted:/workspace my-dind
sleep 20
docker exec my-dind docker run -d --name unoserver -v /workspace:/data ghcr.io/unoconv/unoserver-docker
sleep 20
docker exec my-dind docker exec unoserver unoconvert /data/example.docx /data/example.pdf
