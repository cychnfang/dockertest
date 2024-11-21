
# 使用nginx 作为基础镜像
FROM nginx:latest

# 维护者信息
MAINTAINER chenfang.fang

COPY ./dist/ /user/share/nginx/html


# 清空 Nginx 默认的静态文件目录
RUN rm -rf /usr/share/nginx/html/*

# 暴露出80 端口
EXPOSE 80 

# 启动nginx 容器
CMD ["nginx", "-g", "daemin off;"]
 
