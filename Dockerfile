FROM node:bookworm-slim AS builder
ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.yaml*", "./"]

RUN npm install

COPY . .

RUN npm build
