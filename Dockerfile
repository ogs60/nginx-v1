FROM nginx:alpine

# 删除 Nginx 默认页面
RUN rm -rf /usr/share/nginx/html/*

# 复制 HTML 页面
COPY html/ /usr/share/nginx/html/

# 复制 Nginx 配置
COPY nginx.conf /etc/nginx/conf.d/default.conf

# 暴露 HTTP
EXPOSE 80

# 前台运行 Nginx
CMD ["nginx", "-g", "daemon off;"]
