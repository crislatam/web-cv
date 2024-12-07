# Utiliza la imagen oficial de Nginx
FROM nginx:latest

WORKDIR /usr/share/nginx/html

COPY nginx.conf /etc/nginx/nginx.conf

COPY . .

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
