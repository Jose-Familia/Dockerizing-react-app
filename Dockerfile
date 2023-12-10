# Establecer la imagen base
FROM node:18-alpine

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar los archivos del paquete.json al contenedor
COPY ./react-app/package*.json ./

# Instalar las dependencias
RUN npm install -g pnpm

# Copiar el resto de los archivos de la aplicación al contenedor
COPY ./react-app .

# Exponer el puerto 3000
EXPOSE 3000

# Comando para iniciar la aplicación
CMD [ "npm", "start" ]