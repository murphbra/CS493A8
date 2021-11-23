FROM node:14
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . . 
ENV PORT=8000
ENV GOOGLE_APPLICATION_CREDENTIALS="./cs493a8-333001-849a56ba7628.json"
EXPOSE 8000
CMD ["npm", "start"]