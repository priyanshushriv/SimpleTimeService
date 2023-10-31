FROM node:18.17.1 as builder
WORKDIR /app
COPY package*.json ./
RUN npm install --only=production
FROM node:18.17.1-alpine
WORKDIR /app
COPY --from=builder /app/node_modules ./node_modules
COPY . .
ARG PORT_ARG=3000
ENV PORT_NUMBER=$PORT_ARG
EXPOSE $PORT_ARG
CMD ["node", "app.js"]
