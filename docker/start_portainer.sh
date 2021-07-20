docker run -dit \
    --publish 18000:8000 \
    --publish 19000:9000 \
    --name=portainer-ce \
    --restart=always \
    --mount type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock \
    --mount type=volume,src=portainer_volume,dst=/data \
    portainer/portainer-ce