FROM node:10
WORKDIR /app
COPY . .
RUN npm install
RUN npm install sequelize-cli
RUN npx sequelize-cli db:migrate
EXPOSE 5000
CMD ["npm", "start"]
