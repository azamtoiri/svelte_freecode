# Stage 1: Сборка SvelteKit
FROM node:18 AS build

WORKDIR /app

# Устанавливаем зависимости и собираем приложение
COPY package.json package-lock.json ./
RUN npm install

COPY . .
RUN npm run build

# Stage 2: Настройка Nginx и копирование билдов
FROM nginx:alpine

COPY --from=build /app/build /usr/share/nginx/html

COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf

# Stage 3: Сервер Express (обработчик запросов)
FROM node:18 AS server

WORKDIR /app

# Устанавливаем зависимости для Express
COPY package.json package-lock.json ./
RUN npm install --production

COPY . .

# Скопировать серверный обработчик из build
COPY --from=build /app/build/handler.js /app/build/handler.js

EXPOSE 3000

CMD ["node", "server.js"]
