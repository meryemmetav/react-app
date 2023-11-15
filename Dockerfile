#Use an official Node.js runtime as the base image
FROM node:14

#Set the working directoty 
WORKDIR /apptest

#Copy package.json and package-lock.json
COPY package.json .

#Install dependencies
RUN npm install

#Copy the application code into the container 
COPY . .

EXPOSE 3000

#Specify the commande to start our app
CMD [ "npm", "start" ]