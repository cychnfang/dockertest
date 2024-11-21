
# 使用nginx 作为基础镜像
FROM nginx:latest

# 维护者信息
MAINTAINER chenfang.fang

COPY dist/ /user/share/nginx/html

#用本地配置文件替换nginx镜像里的默认配置
COPY Docker/nginx/nginx.conf /ect/nginx/nginx.conf

# 暴露出80 端口
EXPOSE 80 

# 启动nginx 容器
CMD ["nginx", "-g", "daemin off;"]
 
