FROM node:16

WORKDIR /islom/src/app

COPY package*.json ./

COPY . .

RUN npm i
RUN npm run build

EXPOSE 3000
CMD ["node", "dist/main"]