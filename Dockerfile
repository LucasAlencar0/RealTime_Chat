# Imagem base com Node.js
FROM node:14

# Diretório de trabalho
WORKDIR /app

# Copiar arquivos do backend
COPY backend/ /app/backend

# Copiar arquivos do frontend
COPY frontend/ /app/frontend

# Instalar dependências do backend
WORKDIR /app/backend
RUN npm install

# Instalar dependências do frontend
WORKDIR /app/frontend
RUN npm install

# Porta do backend
EXPOSE 3000

# Porta do frontend
EXPOSE 8080

# Comando para iniciar o backend
CMD ["npm", "run", "start"]

# Comando para iniciar o frontend
CMD ["npm", "run", "dev"]
