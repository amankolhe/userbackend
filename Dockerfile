FROM node:23-alpine
WORKDIR /app

COPY package.json package-lock.json ./

RUN npm ci

COPY . .

EXPOSE 5001

CMD ["npm", "start"]