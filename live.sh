#! /bin/bash

ssh 34.105.149.169 << EOF
  sudo docker pull 35.242.156.82:8082/myflask-app:latest
  git clone https://github.com/SherazShahid017/duo-task.git
  cd duo-task
  docker-compose -d up
EOF
