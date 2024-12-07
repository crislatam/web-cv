# Utiliza la imagen oficial de Nginx
FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY nginx.conf /etc/nginx/conf.d/default.conf

ADD css css
ADD icons icons
ADD images images
ADD index.html index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
