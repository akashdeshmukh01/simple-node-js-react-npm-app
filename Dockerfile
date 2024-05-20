FROM node:14-alpine
WORKDIR app
COPY package*.json ./
RUN npm install
RUN npm run test
COPY . .
EXPOSE 3000
CMD ["node","index.js"]
