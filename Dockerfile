FROM tomcat:9.0-jdk11-temurin

# Xóa các ứng dụng mặc định sẵn của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy toàn bộ mã nguồn web và cấu hình trực tiếp vào thư mục ROOT của Tomcat
COPY src/main/webapp /usr/local/tomcat/webapps/ROOT
COPY src/main/java /usr/local/tomcat/webapps/ROOT/WEB-INF/classes

EXPOSE 8080
CMD ["catalina.sh", "run"]