# DockerSample
Build docker - Laravel - nginx - composer - git - nodejs

## Yêu cầu
- Docker: https://docs.docker.com/install/
- Docker-compose: https://docs.docker.com/compose/install/

## Tạo project Laravel với Docker
1. Bước 1: Tạo project Laravel: https://laravel.com/docs/6.x/installation
2. Bước 2: Cài đặt môi trường docker với docker-compose
- Tạo 4 file setting sau:
	+ docker-compose.yml: cài đặt các service chạy trong docker, mỗi service sẽ đảm nhiệm một chức năng.
	+ app.dockerfile: Đặc tả cài đặt cho server app.
	+ web.dockerfile: đặc tả cài đặt cho service web.
	+ vhost.conf: file cấu hình cho webservice nginx.

## Chạy docker
- Chạy các services: docker-compose up -d (-d: optional, để tiến trình ẩn vào background khi hoàn tất)
- Khi sửa dockerfile: docker-compose build sau đó chạy lại services.
- Liệt kê các container đang chạy: docker ps
