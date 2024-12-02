# Usa una imagen base ligera con Nginx
FROM nginx:alpine

# Crea el directorio para los archivos web
WORKDIR /usr/share/nginx/html

# Copia el archivo HTML al servidor web
COPY index.html /usr/share/nginx/html/index.html

# Copia el archivo CSS al servidor web
COPY styles.css /usr/share/nginx/html/styles.css

# Expone el puerto 80 para el servidor Nginx
EXPOSE 80

# Comando para iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]
