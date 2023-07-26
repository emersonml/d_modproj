# Use a imagem oficial do Node.js como base
FROM node:14.19.1

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia o arquivo package.json e package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instala as dependências do projeto
RUN npm install

# Copia todo o código-fonte para o diretório de trabalho
COPY . .

# Expõe a porta 3000 (ajuste conforme necessário)
#captar volar da variavel do arquivo .env
EXPOSE ${HOST_PORT}
# EXPOSE 3000

# VOLUME /root/script/

# Comando padrão para iniciar o servidor
CMD ["npm", "start"]
