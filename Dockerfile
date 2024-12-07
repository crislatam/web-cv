# Utiliza la imagen oficial de Nginx
FROM nginx:latest

WORKDIR /usr/share/nginx/html

COPY nginx.conf /etc/nginx/nginx.conf

ADD css css
ADD icons icons
ADD images images
ADD index.html index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
