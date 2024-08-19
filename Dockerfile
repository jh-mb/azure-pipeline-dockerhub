# Usa una imagen base de Node.js
FROM node:18-alpine

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia el package.json y package-lock.json
COPY package*.json ./

# Instala las dependencias
RUN npm install --production

# Copia el resto de la aplicación al contenedor
COPY . .

# Exponer el puerto en el que la app correrá
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["npm", "start"]

