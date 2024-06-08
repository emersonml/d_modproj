# Use a imagem oficial do Node.js como base
FROM node:14.19.1

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia o arquivo package.json e package-lock.json para o diretório de trabalho
COPY ./app/package*.json ./

# Instala as dependências do projeto
RUN npm install


# Copia todo o código-fonte para o diretório de trabalho
COPY ./app .

# VOLUME /app

# Comando padrão para iniciar o servidor
CMD ["npm", "start"]
