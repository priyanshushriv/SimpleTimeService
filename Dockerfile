FROM node:18.17.1
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm i --only=production
COPY . .
ARG PORT_ARG=3000
ENV PORT=$PORT_ARG
EXPOSE $PORT_ARG
CMD ["node", "app.js"]
