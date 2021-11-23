FROM node:14
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . . 
ENV PORT=8000
EXPOSE ${PORT}
ENV GOOGLE_APPLICATION_CREDENTIALS='./home/murphy_brayden/CS493A8/cs493a8-333001-849a56ba7628.json'
CMD ["npm", "start"]