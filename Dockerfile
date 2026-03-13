FROM node:22-alpine

WORKDIR /app

COPY TODO/todo_backend ./todo_backend

WORKDIR /app/todo_backend

RUN npm install

EXPOSE 5000

CMD ["npm","start"]
