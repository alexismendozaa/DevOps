# Usa una imagen base ligera con Nginx
FROM nginx:alpine

# Copia el archivo HTML y CSS al servidor web
COPY index.html /usr/share/nginx/html/index.html
COPY styles.css /usr/share/nginx/html/styles.css

# Expone el puerto 80 para el servidor Nginx
EXPOSE 80

# Comando para iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]
