FROM node:18.12.1
WORKDIR /app
RUN npm install
EXPOSE 1145

CMD ["npm", "run", "dev"]