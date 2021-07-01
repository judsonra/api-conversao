FROM node:lts-alpine3.13
WORKDIR /aplicacao
COPY package.json package-lock.json /aplicacao/
RUN npm install
COPY . .
EXPOSE 8080
CMD ["node", "index.js"]