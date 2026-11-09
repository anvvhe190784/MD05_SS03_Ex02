#!/bin/bash
# Script khởi chạy Course-Service phiên bản Mock (rikkei-course-service)

# 1. Xóa container cũ nếu đã tồn tại
docker rm -f rikkei-course-service 2>/dev/null

# 2. Khởi chạy container nginxdemos/hello ở chế độ ngầm (-d), cổng 8081:80
docker run -d --name rikkei-course-service -p 8081:80 nginxdemos/hello

# 3. Kiểm tra danh sách container đang hoạt động
docker ps

# 4. Kiểm tra phản hồi từ dịch vụ qua cổng 8081
curl http://localhost:8081
