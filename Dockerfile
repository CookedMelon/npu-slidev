FROM node:18.12.1
WORKDIR /app
COPY package*.json ./
RUN npm install
RUN npm install -g npm@10.3.0
# copy files except node_modules folder
COPY . .
EXPOSE 1145

CMD ["npm", "run", "dev"]