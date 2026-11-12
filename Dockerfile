FROM cypress/included:16.3.0
WORKDIR /e2e

# Copia os arquivos essenciais do projeto
COPY package.json .
COPY package-lock.json .
COPY cypress.config.js .
COPY cypress ./cypress

# Instala as dependências do projeto
RUN npm install