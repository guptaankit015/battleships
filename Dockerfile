# Container image that runs your code
FROM node:15.14-alpine3.13

FROM node:12.18.1
ENV NODE_ENV=production
ENV PORT=8080

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

EXPOSE 8080

CMD [ "node", "server.js" ]
