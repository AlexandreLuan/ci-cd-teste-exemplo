FROM cypress/included:latest
WORKDIR /e2e

#copia os arquivos essenciais do projeto
COPY package.json .
COPY package-lock.json .
COPY cypress.config.js .
COPY cypress ./cypress

#Instala as dependências do projeto
RUN npm install

#Comando para rodar os testes
CMD ["cypress", "run"]