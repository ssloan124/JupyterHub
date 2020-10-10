#!bin/sh

sudo chown 1000 /home/sam/repos/jupyter/mount

sudo docker-compose up --build

function cleanup {
  sudo docker-compose down
}

trap cleanup EXIT
