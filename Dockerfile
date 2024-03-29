FROM node:16-alpine3.13

WORKDIR /app

COPY package*.json ./
COPY yarn.lock ./
 
RUN yarn install 

COPY . .

EXPOSE 3000

CMD ["yarn", "dev"]
