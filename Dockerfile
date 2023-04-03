FROM node:19.8.1

WORKDIR /kill-the-newsletter

COPY package*.json ./
RUN npm ci --production
COPY . .

EXPOSE 8000
EXPOSE 2525

CMD npx ts-node .
