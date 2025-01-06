# Usa una imagen base de Node.js
FROM node:18.18.0

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo package.json y package-lock.json (si existe) para instalar dependencias
COPY package*.json ./

# Instala las dependencias de la aplicación
RUN npm install

# Copia todo el código fuente de la aplicación al contenedor
COPY . .

# Expón el puerto que usa la aplicación (ajusta según tu configuración)
EXPOSE 4000

# Comando para iniciar la aplicación Express
CMD ["npm", "start"]
