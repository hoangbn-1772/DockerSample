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

# Lý thuyết về Docker
1. Container
- Container Engine (Công cụ ảo hóa tinh gọn được cài đặt trên host OS) - Đóng gói các chương trình thành Container.
- Container là một giải pháp để chuyển giao phần mềm một cách đáng tin cậy giữa các môi trường máy tính khác nhau.
	+ Các tiến trình trong container bị cô lập với các tiến trình của container khác.
	+ Các Container để chia sẻ kernel của host OS.
2. Docker
- Docker ra đời sử dụng công nghệ containerlazation.
- Ban đầu, Docker được xây dựng trên nền tảng Linux. Vì Docker cần can thiệp vào kernel, trong khi đó Linux là open source cần gì có đấy.
- Sau đó nó hỗ trợ các hệ điều hành khác: Windows, Mac.
3. Cách hoạt động
`Docker? Image? Container?`
- Docker Image là nền tảng của container. Giúp định hình container, nó sẽ tạo ra container khi thực hiện lệnh chạy image đó. Nói theo phong cách lập trình hướng đối tượng, Docker image là class, còn container là thực thể
- 
# Tham khảo
- https://viblo.asia/p/docker-chua-biet-gi-den-biet-dung-phan-1-lich-su-ByEZkWrEZQ0#_21-containerlization-la-gi--2
