# ubuntu_docker
ubuntu18.04のGUI環境

docker build -t ssl_ws:1.0 ./

解像度変更
docker run -p 6080:80 -e RESOLUTION=1920x1080 ssl_ws:1.0