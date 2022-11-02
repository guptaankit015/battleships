# Container image that runs your code

FROM node:12.18.1
ENV NODE_ENV=production
ENV PORT=80

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

EXPOSE 80

CMD [ "node", "server.js" ]
